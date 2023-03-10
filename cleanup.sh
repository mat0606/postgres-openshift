export KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig
echo "deleting ingress"
#oc -n postgres1 delete -f ingress/ingress.yaml
echo "delting keycloak"
oc -n postgres1 delete -f keycloak/keycloak.yaml
echo "deleting keycloak operator"
oc -n postgres1 delete -f keycloak-operator/kubernetes.yml
echo "deleting postgres1 in az"
oc -n postgres1 delete -f postgres1-operator-examples/kustomize/postgres1/postgres1-lakshmi.yaml
#echo "deleting postgres1 operator"
#oc -n postgres1 delete deployment.apps/pgo
#oc -n postgres1 delete deployment.apps/pgo-upgrade
echo "deleting route"
oc -n postgres1 delete route example-kc-service
echo "what's left in the namespace"
oc -n postgres1 get all 

