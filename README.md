# 操作举例
## 一、账户以及secret相关操作

    1. 创建secret

```css
kubectl create secret docker-registry myregistrykey --docker-server=192.168.11.53:8082 --docker-username=admin --docker-password=admin123 --docker-email=hemeiloan@docker.com -n kube-system
```
    2. 为serviceaccount绑定secret

```css
kubectl patch serviceaccount dashboard -p '{"imagePullSecrets": [{"name": "myregistrykey"}]}' -n kube-system
```
    3. 绑定默认账户

```css
kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "myregistrykey"}]}' -n sit
```

## 二、用命令行创建namespace

```css
kubectl create namespace sit
```