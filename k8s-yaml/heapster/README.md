## 根据grafana.ini文件创建configmap
```shell
kubectl create configmap grafana-conf --from-file=grafana.ini -n kube-system
```