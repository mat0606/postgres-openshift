export KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig

echo "Installing keycloak-operator"
oc -n postgres1 apply -f keycloak-operator/keycloaks.k8s.keycloak.org-v1.yml
oc -n postgres1 apply -f keycloak-operator/keycloakrealmimports.k8s.keycloak.org-v1.yml
oc -n postgres1 apply -f keycloak-operator/kubernetes.yml
echo "Wating for keycloak operator pod to be up"
sleep 5
oc -n postgres1 get po | grep key
echo "Installing KeyClaok"
oc -n postgres1 apply -f keycloak/keycloak.yaml
oc -n postgres1 get po | grep example
echo "Exposing route"
# Use this for OpenShift 4.12
#oc -n postgres1 apply -f ingress/ingress.yaml
# Use this for OpenShift 4.11
sleep 5
oc -n postgres1 expose svc example-kc-service
