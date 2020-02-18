#!/usr/bin/env bash

mvn package

# 不能直接运行build命令，因为Dockerfile中的ARG参数由POM传递，所以需要使用mvn package命令进行镜像的构建
#docker build -t 127.0.0.1:8850/dubbo-spring-cloud-demo/dubbo-provider:0.0.1-SNAPSHOT .
# mvn deploy会直接push，但是有个bug暂时没解决
#docker push 127.0.0.1:8850/dubbo-spring-cloud-demo/dubbo-provider:0.0.1-SNAPSHOT
# 运行镜像
#docker run -itd --name dubbo-provider 127.0.0.1:8850/dubbo-spring-cloud-demo/dubbo-provider:0.0.1-SNAPSHOT --nacos.address=192.168.0.102