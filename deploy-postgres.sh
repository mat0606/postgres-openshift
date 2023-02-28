export KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig
echo "Installing postgres1-operator"
#oc -n postgres1 apply -k postgres1-operator-examples/kustomize/install/namespace
#oc -n postgres1 apply --server-side -k postgres1-operator-examples/kustomize/install/default
#echo "checking pod status"
#sleep 5
#oc -n postgres1 get pods \
#--selector=postgres1-operator.crunchydata.com/control-plane=postgres1-operator \
#--field-selector=status.phase=Running
echo "installing postgres1"
oc -n postgres1 apply -f postgres-operator-examples/kustomize/postgres/postgres-lakshmi.yaml


