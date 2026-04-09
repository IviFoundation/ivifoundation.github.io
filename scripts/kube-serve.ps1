
# NOTE THAT WHEN ALL IS WORKING WELL THE IVI FOUNDATION WEBSITE SHOULD BE ACCESSIBLE AT http://localhost:30400.  (JM)

# Not currently integrated into this development tool (JM)
# param (
#     [switch] $ReusePreviousOutput,
#     [switch] $RenderUnpublished
# )

# $jekyllArgs = @()
# if ($ReusePreviousOutput) {
#     $jekyllArgs += "--skip-initial-build"
# }
# if ($RenderUnpublished) {
#     $jekyllArgs += "--drafts"
#     $jekyllArgs += "--future"
#     $jekyllArgs += "--unpublished"
# }

# Create the temporary Kubernetes YAML file for the pod
$tmp_kube_yaml= New-TemporaryFile


# Removed flags:
# - --incremental
#       This is known dangerous in a containerized environment, as it can cause the site to not rebuild when files change. For development, it's better to force a full rebuild on each change to ensure that all changes are reflected correctly. (JM)
# - --watch 
#       This is not needed when using --force_polling, as it will automatically watch for changes. Additionally, in a containerized environment, the file system events may not be properly detected, so relying on polling is more reliable. (JM)
#

@"
apiVersion: v1
kind: Pod
metadata:
  name: ivi-foundation-website
  labels:
    app: ivi-foundation-website
spec:
  restartPolicy: Never
  containers:
    - name: jekyll
      image: jekyll/jekyll
      env:
        - name: JEKYLL_ENV
          value: development
        - name: JEKYLL_SASS_IMPLEMENTATION
          value: sassc
      args:
        - sh
        - -c
        - |
          bundle install &&
          bundle exec jekyll serve \
            --force_polling \
            --profile \
            --host 0.0.0.0 \
            --trace \
            --drafts \
            --future \
            --unpublished
      ports:
        - containerPort: 4000
      volumeMounts:
        - name: site
          mountPath: /srv/jekyll
  volumes:
    - name: site
      hostPath:
        path: /mnt/c/Users/jmueller/git-ivi/website/ivifoundation.github.io/site
        type: Directory
"@ | Set-Content $tmp_kube_yaml


# warning - parameters to force rebuild hard coded in yaml for now 
kubectl apply -f $tmp_kube_yaml
kubectl port-forward pod/ivi-foundation-website 4000:4000


# now create a service to forward the port 
# Kubernetes port forwarding is a bit more complex than Docker's, so we need to create a temporary YAML file for the service as well. This service will allow us to access the Jekyll server running in the pod on port 4000 from our local machine.  Otherwise the Jekyll server will only be accessible from within the cluster, which is not what we want for development purposes.

$tmp_portforward_yaml = New-TemporaryFile
@"
apiVersion: v1
kind: Service
metadata:
  name: ivi-foundation-website
spec:
  type: NodePort
  selector:
    app: ivi-foundation-website
  ports:
    - port: 4000
      targetPort: 4000
      nodePort: 30400
"@ | Set-Content $tmp_portforward_yaml

kubectl apply -f $tmp_portforward_yaml


Remove-Item  -Force "$tmp_kube_yaml"
