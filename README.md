# 基于 [gin](https://github.com/gin-gonic/gin) 编写的文件上传下载服务器

## 安装方式
- docker 部署
``` sh
docker build -t x/file_server .
docker run -p 8080:8080 -itd x/file_server
```
- app 部署
``` sh
go build -o app .
./app
打开浏览器访问 localhost:8080
```