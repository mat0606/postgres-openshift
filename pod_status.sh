export KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig
oc -n postgres1 get pod --output custom-columns=NAME:metadata.name,STATUS:.status.phase,IP:status.podIP,NODE:spec.nodeName 

