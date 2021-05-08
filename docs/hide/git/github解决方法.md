# github 上不去的解决方法

网页搜索 https://site.ip138.com/github.com/

找到`hosts`文件，推荐用火绒安全直接修改（方便打开）

更多工具里有

或用记事本打开`C:\Windows\System32\drivers\etc\hosts`拷贝到桌面，修改后复制回去

两种方法打开之后操作一致

都是打开`hosts`添加以下内容

`ip地址`在 https://site.ip138.com/github.com/

利用`cmd`的`ping`指令来查看网站`ping`值，选取最好的`ip`键入

```
#github start
ip地址 github.com
ip地址 gist.github.com
ip地址 github.global.ssl.fastly.net
#github end
```

`cmd`打开输入

```
ipconfig /flushdns
```

来更新配置

## 国内镜像

> 只能在不登录的情况下使用

https://github.com.cnpmjs.org/

github 的国内镜像，github 进不去的话 就用上面的网址
