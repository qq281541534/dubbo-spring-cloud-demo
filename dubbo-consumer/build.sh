#!/usr/bin/env bash

mvn package

# 不能直接运行build命令，因为Dockerfile中的ARG参数由POM传递，所以需要使用mvn package命令进行镜像的构建
#docker build -t hub.harbor.com:8850/dubbo-spring-cloud-demo/dubbo-consumer:0.0.1-SNAPSHOT .
# mvn deploy会直接push，但是有个bug暂时没解决
#docker push hub.harbor.com:8850/dubbo-spring-cloud-demo/dubbo-consumer:0.0.1-SNAPSHOT
# 启动镜像 参数-d 后台启动
#docker run -itd --name dubbo-consumer -p 8001:8001 hub.harbor.com:8850/dubbo-spring-cloud-demo/dubbo-consumer:0.0.1-SNAPSHOT --nacos.address=192.168.0.103