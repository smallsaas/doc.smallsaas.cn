## 说明文档

[点击跳转](http://doc.smallsaas.cn)

## 使用说明
从`github`上`clone`下来之后，安装`npm i`, 然后 `npm start` 运行

## 生产环境部署
```
git clone https://github.com/smallsaas/docs.smallsaas.cn
COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build --detach
# or
# sh startup.sh
```

## 索引

> 1. 项目开发
>    1. [表单开发](./docs/development/表单开发.md)
>       1. [表单设计](./docs/development/表单开发.md#表单设计)
>       2. [数据库表设计](./docs/development/表单开发.md#数据库表设计)
>    2. [移动端开发](./docs/development/小程序开发手册.md)
>       1. [移动端开发规范](./docs/development/小程序开发手册.md#移动端开发规范)
>    3. [低代码开发](./docs/development/低代码开发.md)
>       1. [如何生成 API 后台代码](./docs/development/低代码开发.md#如何生成API后台代码)
>       2. [如何生成前端代码](./docs/development/低代码开发.md#如何生成前端代码)
>    4. [项目开发流程](./docs/development/项目开发流程.md)
>       1. [需求阶段](./docs/development/项目开发流程.md#需求阶段)
>       2. [架构阶段](./docs/development/项目开发流程.md#架构阶段)
>       3. [开发阶段](./docs/development/项目开发流程.md#开发阶段)

## 更改端口方法

进入`docker-compose.yml`，更改`ports`中的 8005 为所需端口即可

## issue

1. 为何 docker-compose up 之后无法在服务器显示页面？

   **问题判断**

   docker 镜像问题

   **解决方法**

   更换 docker 镜像为国内镜像，

   1. 新建或编辑`daemon.json`

      ```
      vi /etc/docker/daemon.json
      ```

   2. 在`daemon.json`中编辑如下

      新建`daemon.json`的情况下，使用 **i** 开始编辑，直接将下面的文本复制过去

      ```
      {
      	"registry-mirrors":["http://hub-mirror.c.163.com"]
      }
      ```

      已有`daemon.json`的情况下，使用 **i** 开始编辑，将光标移入`“{}”`中，在首项添加，或找到`"registry-mirrors"`项，更改

      ```
      "registry-mirrors":["http://hub-mirror.c.163.com"]
      ```

   3. 重启 docker

      ```
      systemctl restart docker.service
      ```

   4. 重新执行 docker-compose up

      ```
      docker-compose up
      ```

   完成。
