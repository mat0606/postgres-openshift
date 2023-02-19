export KUBECONFIG=kubeconfig
oc -n postgres1 apply -f postgres-operator-examples/kustomize/postgres/postgres-az.yaml

