# Git 工具的使用方法

> 注：以下代码中所有[]里的内容除了中文和括号其他的不要更改，如["你的名字"]，你可以改为"mike"这样。

## 安装

打开网址https://git-scm.com/downloads，选择你本身的系统`windows`/`linux/unix`/`macOS` 点击进去，选择符合系统的安装包，点击开始下载，这边以 Window10 64-bit 为例，下载完之后得到了一个`Git-2.31.1-64-bit.exe`,打开，点击`Next`，出现一堆选项，勾选`Additional icons-On the Desktop`点击`Next`，默认出来一个选项组，无需更改，直接`Next`，选择`Let GIt decide`然后`Next`，我这边选择`Git from the command line and also from 3rd-party software`然后`Next`，再`Use the OpenSSL library`然后`Next`,然后继续`Next`,再`Next`再`Next`，`Next`到`Install`然后等待安装即可

## 操作方法

1. <a name="one">第一步</a>下载完成后，创建一个文件夹，任意地方都可，然后打开桌面的`Git Bash`快捷方式。

2. 然后这边先要定义一个 SSH 秘钥，在`git`工具中输入下面一串代码

```
git config --global user.name ["你的名字"]
```

这个是设置你的 SSH 秘钥名称，然后还要设置一个 SSH 秘钥邮箱

```
git config --global user.email ["你的邮箱"]
```

这样设置之后就会产生一个 SSH 秘钥文件

3. 然后检测是否存在 SSH 秘钥，首先输入

```
cd ~/.ssh
```

然后输入

```
ls
```

这个代码的意思是列出`~/.ssh`目录下的文件，如果存在`ssh key`，那么列出来的文件里存在`id_isa`和`id_isa.pub`两个文件，否则重复上面的操作

4. 然后生成秘钥，输入

```
ssh-keygen -t rsa -C ["你的邮箱"]
```

然后直接回车到结束

最后得到两个文件：`id_rsa`和`id_rsa.pub`

默认的存储路径是：

```
C:\Users\Administrator\.ssh
```

5. 添加秘钥到`ssh-agent`

```
eval "$(ssh-agent -s)"
```

6. 添加生成的`SSH key`到 `ssh-agent`

```
ssh-add ~/.ssh/id_rsa
```

7. 登陆`Github`，添加`ssh`

登陆之后点击右上角头像，转到`Setting`,左边栏有一项`SSH and GPG keys`，点击，然后打开你电脑中`id_rsa.pub`所在的地址，使用记事本打开`id-rsa.pub`,复制里面内容，回到`Github`，点击`New SSH key`,里面的`Title`可以任意写，`key`里把更改复制的粘贴过去，然后`Add`

8. 测试

```
ssh -T git@github.com
```

你将会看到：

```
Hi AEdgeJay! You’ve successfully authenticated, but GitHub does not provide shell access.
```

如果看到 Hi 后面是你的用户名，就说明成功了

> 注：以上操作只用在第一次执行，以下是主要操作

9. cd 到你<a href="#one">第一步</a>初始化的目录

> 例：我这边建立的是 D 盘`work`目录下的`githublib`目录，那么我输入的代码应是
>
> ```
> cd D:/work/githublib
> ```

然后直接输入初始化代码

```
git init
```

> 注：打开目标文件夹，如果不设置查看隐藏文件的话无法看到`.git`文件夹

然后这边连接本地和远程库

```
git remote add origin git@github.com:kequandian/developing_guide.git
```

连接一次就好，再输入一次会出现

```
error:remote orgin already exists
```

意思是重复定义了远程库。

设置成功之后使用

```
git remote -v
```

意思是查看连接情况，

如果出现

```
origin git@github.com:kequandain/developing_guide.git (fetch)
origin  git@github.com:kequandain/developing_guide.git (push)
```

代表连接成功

9. `clone`远程库

首先要把远程库给`clone`下来

```
git clone [远程库地址]
```

10. 操作库

然后`cd`到`clone`下来的文件夹

```
cd [clone下来的文件夹]
```

> 注：重点要 cd 到 clone 下来的文件夹，如果直接在原文件夹会报错！

添加编辑后的文件，并添加到虚拟库

```
git add [文件名]
```

然后设置如何提交代码

```
git commit -m ["注释"]
```

之后检测一下远程库是否更新

```
git pull origin master
```

然后上传文件至远程库

```
git push origin master
```

## 扩展

### 常用命令

| **Case**               | **Command Line**                         | **Comment**                                     |
| ---------------------- | ---------------------------------------- | ----------------------------------------------- |
| 如何初始化仓库         | `git init`                               | 先进入新建空目录                                |
| 如何克隆远程仓库       | `git clone <repo>`                       | `<repo>` 指仓库地址                             |
| 如何增加新文件         | `git add --all`                          | 除了新文件还包括所有修改                        |
| 如何查看提交`状态`     | `git status`                             | 提交信息/是否已提交等                           |
| 如何查看远程仓库       | `git remote -v`                          | `-verbose` 远程仓库信息                         |
| 如何设置远程仓库       | `git remote add origin <repo>`           | `origin` 是远程仓库名(常用名)                   |
| 如何修改远`程仓库`     | `git remote set-url origin <repo>`       |                                                 |
| 如何提交代码           | `git commit –m “comments”`               | `comments` 指此次提交的说明                     |
| 如何推送到远程仓库     | `git push origin master`                 | 地本提交推送到远程                              |
| 如何合并远程提交到本地 | `git pull origin master`                 |                                                 |
| 如何移除已提交文件     | `git rm <fn>`                            | `fn` 指文件名                                   |
| 如何移除已提交目录     | `git rm <dir>`                           | `<dir>` 指目录名                                |
| 如何重置未提交修改     | `git reset --hard`                       | 修改后要重置为初始状态                          |
| 如何取消当前提交       | `git reset –soft HEAD~`                  | 重置到未提交状态，保留修改                      |
| 如何创建远程仓库       | `git init –bare <repo>`                  | 登录至远程仓库所在服务器                        |
| 如何强制推送至远程仓库 | `git push origin master -f`              | `-force` 加此参数相当于本地仓库完全覆盖远程仓库 |
| 如何创建新分支         | `git branch <branch-name>`               |                                                 |
| 基于现有分支创建分支   | `git checkout –b <branch-name> <master>` | `master` 指现在分支名, 或`commit-id`            |
| 如何显示所有分支       | `git branch -a`                          |                                                 |

### 过滤

#### 过滤的设置方法

工程项目会产生很多非源代码中间文件，不应该提交。

1. 在 `repo` 目录下面创建 `.gitignore` 文件，并需要提交`$ cat .gitignore`
2. 后面 `/` 指目录，表示忽略整个工程项目下面所有子目录下 的 `build` 目录`build/`
3. 通配符忽略后缀为 `.log` 的所有文件 `*.log`
4. 前面 `/` 指当前工程根目录下面的`gen`目录,不包含子目录`/gen`
5. 指定忽略某个文件 `.config.json`
