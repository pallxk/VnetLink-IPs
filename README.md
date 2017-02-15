# [微林] IP 地址库

[微林]提供了诸多网络加速优化服务，如 *vxGG*, *vxTrans* 等。在使用相关服务时，有时我们需要为微林服务器的 IP 地址添加相应的防火墙例外规则，因而有了此项目。

此项目旨在

* 记录微林服务的域名，并提供域名到 IP 的转换脚本，从而实现自动化的 IP 记录;
* 提供 crontab 配置脚本，以及 git 部署脚本，以实现持续且自动化的 IP 记录更新。


## 文件组织

此项目将微林的服务名作为文件夹名，文件夹下的 `server-list.txt` 记录了相应服务所使用的域名（其中以 `#` 开头的行将被视作为注释），`ip-list.txt` 为与服务所使用域名相对应的 IP 地址。

* `hostname2ip` 为将域名转换为 IP 地址的脚本；
* `deploy` 为更新 IP 地址并将其同步至 git 服务器的部署脚本；
* `setup-crontab` 为配置 crontab 以定时执行 `deploy` 的脚本。


## 授权

此项目中的源代码采用 [MIT 许可证](LICENSE.txt) 进行授权。

```
The MIT License (MIT)
Copyright (c) 2017 pallxk <github@pallxk.com>
```



[微林]: https://vnet.link/
