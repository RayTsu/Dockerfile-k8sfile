## 绑定secret到指定账户和默认账户
    1. 绑定kube-state-metrics账户
```shell
kubectl patch serviceaccount kube-state-metrics -p '{"imagePullSecrets": [{"name": "myregistrykey"}]}' -n kube-system
```
    2. 绑定prometheus-k8s账户
```shell
kubectl patch serviceaccount prometheus-k8s -p '{"imagePullSecrets": [{"name": "myregistrykey"}]}' -n kube-system
```
    3.绑定默认账户
```shell
kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "myregistrykey"}]}' -n kube-system
```