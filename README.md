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

