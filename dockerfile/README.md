## 用Dockerfile构建镜像时可以在命令行传变量赋值
    1. 拿Dockerfile-redis-common为例，先用AGR定义变量REDIS_ENV，写法为ARG REDIS_ENV，后面的脚本用$REDIS_ENV取值即可,命令如下：
```shell
docker build . -t redis-uat --build-arg REDIS_ENV=sit -f Dockerfile-redis-common
```