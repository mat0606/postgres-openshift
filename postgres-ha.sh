export KUBECONFIG=kubeconfig
oc -n postgres1 apply -f postgres1-operator-examples/kustomize/postgres1/postgres1-az.yaml

