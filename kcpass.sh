KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig
export KUBECONFIG
#oc get nodes
echo "Get keycloak user "
oc -n postgres1 get secret example-kc-initial-admin -o jsonpath='{.data.username}' | base64 --decode
echo "Get keycloak password "
oc -n postgres1 get secret example-kc-initial-admin -o jsonpath='{.data.password}' | base64 --decode
 
