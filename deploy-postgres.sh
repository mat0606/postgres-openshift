export KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig
echo "Installing postgres-operator"
oc -n postgres1 apply -k postgres-operator-examples/kustomize/install/namespace
oc -n postgres1 apply --server-side -k postgres-operator-examples/kustomize/install/default
echo "checking pod status"
sleep 5
oc -n postgres1 get pods \
--selector=postgres-operator.crunchydata.com/control-plane=postgres-operator \
--field-selector=status.phase=Running
echo "installing postgres"
oc -n postgres1 apply -f postgres-operator-examples/kustomize/postgres/postgres-az.yaml


