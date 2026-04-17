# Serving the site locally with Kubernetes

This script builds and serves the IVI Foundation website locally using Kubernetes
(tested with Docker Desktop and Rancher Desktop). When running correctly the site is
accessible at **http://localhost:30400**.

## Prerequisites

- **Kubernetes** running locally — Docker Desktop (with Kubernetes enabled) or Rancher Desktop
- **kubectl** available on your PATH
- **PowerShell** (5.1 or newer)

## How to run

Run from **any directory** — the script resolves all paths relative to its own location:

```powershell
.\scripts\kube-serve.ps1
```

The script will:
1. Resolve the `site/` directory path and convert it to a format the cluster can mount
2. Create a `jekyll/jekyll` pod that mounts your local `site/` directory
3. Create a NodePort service that exposes the pod on `localhost:30400`
4. Wait up to 5 minutes for the pod to become ready
5. Print a message once the pod is running

> **Note:** The pod runs `bundle install` before starting Jekyll, which can take several
> minutes on a cold start. The site will not respond until that completes and you see
> Jekyll output in the logs (see [Watching the logs](#watching-the-logs) below).

## How to debug

### Watching the logs

Stream live output from the Jekyll container to see `bundle install` progress and confirm
when the server is actually ready:

```powershell
kubectl logs -f pod/ivi-foundation-website
```

The site is ready once you see a line like:
```
Server running... press ctrl-c to stop.
```

### Checking pod status

```powershell
kubectl get pod ivi-foundation-website
kubectl describe pod ivi-foundation-website
```

`describe` is the first place to look if the pod never becomes Ready — it shows image pull
errors, volume mount failures, and other events.

### Checking the service

```powershell
kubectl get service ivi-foundation-website
```

The `PORTS` column should show `4000:30400/TCP`. If the service is missing, re-run the script.

### Tearing down

The pod has `restartPolicy: Never` so it will not restart on its own. To stop and remove
everything:

```powershell
kubectl delete pod ivi-foundation-website
kubectl delete service ivi-foundation-website
```

Re-run the script to start fresh.

### WSL / path issues

The script automatically converts the Windows host path (e.g. `C:\Users\...`) to the
`/mnt/c/...` format expected by clusters running inside WSL. If the volume fails to mount,
check that the converted path printed in the pod description matches your actual checkout
location.

### Gem changes

If you change `Gemfile` or `Gemfile.lock`, the container will re-run `bundle install` on
the next start. For a faster iteration cycle when updating gems it can be easier to run
`bundle install` from a Linux environment (WSL or another clone) to update the lockfile
before restarting the pod.
