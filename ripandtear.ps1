kind.exe create cluster --config kind-config.yaml
Start-Sleep -Seconds 5
kubectl.exe --context kind-kubedoom-cluster label node kubedoom-cluster-control-plane node.kubernetes.io/exclude-from-external-load-balancers-
Start-Process -WindowStyle hidden cloud-provider-kind
Start-Sleep -Seconds 5
kubectl.exe --context kind-kubedoom-cluster apply -k manifest/
for (;;) {
	kubectl.exe --context kind-kubedoom-cluster -n kubedoom get pods
	Start-Sleep -Seconds 1
}