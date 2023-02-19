export KUBECONFIG=/home/nutanix/openshift/auth/kubeconfig
echo "deleting ingress"
oc -n postgres1 delete -f ingress/ingress.yaml
echo "delting keycloak"
oc -n postgres1 delete -f keycloak/keycloak.yaml
echo "deleting keycloak operator"
oc -n postgres1 delete -f keycloak-operator/kubernetes.yml
echo "deleting postgres in az"
oc -n postgres1 delete -f postgres-operator-examples/kustomize/postgres/postgres-az.yaml
echo "deleting postgres operator"
oc -n postgres1 delete deployment.apps/pgo
oc -n postgres1 delete deployment.apps/pgo-upgrade
echo "deleting route"
oc -n postgres1 delete route example-kc-service
echo "what's left in the namespace"
oc -n postgres1 get all 

