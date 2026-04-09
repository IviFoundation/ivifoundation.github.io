# Running the script to serve the site locally from Windows for development

kube-serve-ps1

This should be run from the root of the repo.  When working, you should be able to see the IVI Foundation website
at http://localhost:30400.

The alternate script is setup for Rancher desktop/Kubernetes since many members do not run docker
If changing gems, may be best to run 'bundle install' from Linux (another clone, or WSL).

Some familiarity with Kubernetes is important.  The script fires up some containers that you may need to delete (kubectl delete).

Also, it creates a service to forward the internal kubernetes cluster port to local host so you can actually see it.