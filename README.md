# kuar

>Kubernetes up & running

### Proxy

From cloud cluster to localhost:

```
kubectl proxy
```

### Kubernetes Proxy

```
kubectl get daemonSets --namespace=kube-system kube-proxy
```

### Kubernetes DNS

```
kubectl get deployments --namespace=kube-system kube-dns
```

```
kubectl get services --namespace=kube-system kube-dns
```

### Kubernetes Dashboard

```
kubectl get deployments --namespace=kube-system kubernetes-dashboard
```

```
kubectl get services --namespace=kube-system kubernetes-dashboard
```

## Pods

### Details

```
kubectl get pods
```

```
kubectl describe pods <pod-name>
```

## Port forwarding

Create a secure tunnel:

```
kubectl port-forward kuard 8080:8080
```

## Logs

```
kubectl logs -f kuard

## Running commands

```
kubectl exec kuard date
```

```
kube exec -it kuard ash
```

## Copying files

```
kubectl cp <pod-name>:/captures/capture3.txt ./capture3.txt
```
