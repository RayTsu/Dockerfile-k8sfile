## 根据mysqld.cnf文件创建configmap
```shell
kubectl create configmap mysql-conf --from-file=mysqld.cnf -n sit
```