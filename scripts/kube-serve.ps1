
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

# Resolve the repo root as an absolute path (parent of the scripts/ directory).
# $PSScriptRoot is always the directory containing this script, regardless of where
# the user runs it from, so this works for any checkout location.
$sitePath = (Resolve-Path "$PSScriptRoot\..\site").Path

# If your Kubernetes cluster is running on WSL, you may need to adjust the path to the
# site directory to be compatible with WSL. For example, if your site directory is located
# at C:\folder1\IviWebsite\ivifoundation.github.io\site, you would use the following path
# in the Kubernetes YAML: /mnt/c/folder1/IviWebsite/ivifoundation.github.io/site. 
# You can try to do that automatically with a command like this:
if ($sitePath -match '^([A-Z]):\\(.*)') {
    $sitePath = '/mnt/' + $Matches[1].ToLower() + '/' + $Matches[2] -replace '\\', '/'
}


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
        path: $sitePath
        type: Directory
"@ | Set-Content $tmp_kube_yaml


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

kubectl apply -f $tmp_kube_yaml
kubectl apply -f $tmp_portforward_yaml

Remove-Item -Force "$tmp_kube_yaml"
Remove-Item -Force "$tmp_portforward_yaml"

# Wait for the container to start (restartPolicy:Never pods become Ready as soon as the
# process launches, which is before bundle install finishes — so this just confirms the
# pod is alive, not that Jekyll is serving yet).
Write-Host "Waiting for pod to start..."
kubectl wait --for=condition=Ready pod/ivi-foundation-website --timeout=300s


Write-Host "The site will be accessible at http://localhost:30400. It might take a few minutes!"



