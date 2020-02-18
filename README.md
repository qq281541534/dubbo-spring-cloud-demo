# Getting Started

## 制作java运行环境，并上传harbor仓库 

- 将本地java docker环境打成tag:

    ```docker tag daocloud.io/library/java hub.harbor.com:8850/dubbo-spring-cloud-demo/java:latest ```

- 上传至harbor仓库:

    ```docker push hub.harbor.com:8850/dubbo-spring-cloud-demo/java:latest```

## 将本地项目镜像上传harbor仓库

### 一、dubbo-provider

- 详细说明：/dubbo-provider/HELP.md
  
### 二、dubbo-consumer

- 详细说明：/dubbo-consumer/HELP.md

## 启停命令

- 启动命令：```docker-compose up -d```
- 停止命令：```docker-compose down```


