# Cobbler setup 

> Setup Cobbler

### 文件说明

构建cobbler镜像的Dockerfile文件：

- Dockerfile
- start.sh

运行cobbler容器的compose文件：

- docker-compose.yml
- cobbler.env

### 使用说明

1、首先更改`cobbler.env`变量文件里的变量信息  
2、把系统镜像挂载到本机的`/mnt`目录下  
3、运行cobbler容器：`docker-compose up -d`  
4、进入cobbler容器，配置装机系统：`docker exec -it dockercobbler_cobbler_1 bash`  

# Hot to use
1. `cobbler.env`を設定
1. ホストの`/mnt`ディレクトリ配下を作成
1. 実行, `docker-compose up -d`
1. 必要なら内部に入れます`docker exec -it <CONTAINER>`

