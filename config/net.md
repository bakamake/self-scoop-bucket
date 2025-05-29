## proxy

连上手机热点
手机v2rayNG允许来自局域网的连接
在设置-代理-手动设置代理地址和端口（查看手机局域网IP（内部IP))

### winhttp

setting-proxy

### 一些编译器

setx http_proxy "http://192.168.0.56:10808" 

setx https_proxy "http://192.168.0.56:10808"

### git

### aria2

```%APPDATA%\aria2\aria2.conf
# 设置 HTTP 代理
http-proxy=http://proxy-server:port
# 设置 HTTPS 代理
https-proxy=http://proxy-server:port
# 设置 FTP 代理
ftp-proxy=http://proxy-server:port

# 如果代理需要认证（用户名和密码）
http-proxy-user=username
http-proxy-passwd=password
https-proxy-user=username
https-proxy-passwd=password
ftp-proxy-user=username
ftp-proxy-passwd=password

# 如果你想对所有协议使用同一个代理，可以使用 all-proxy
all-proxy=http://proxy-server:port
all-proxy-user=username
all-proxy-passwd=password

# 绕过代理的域名或 IP（可选）
no-proxy=localhost,127.0.0.1,*.local

```

