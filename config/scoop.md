卸载那些不需要的东西
连上手机热点
手机v2rayNG允许来自局域网的连接
在设置-代理-手动设置代理地址和端口（查看手机局域网IP（内部IP))
setx http_proxy "http://192.168.0.56:10808" (看情况
setx https_proxy "http://192.168.0.56:10808" (看情况
微软商店安装Terminal,Powershell(v7)

安装
non-admin powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

配置
scoop install  aria2
scoop install mingit
git config --global http.proxy http://192.168.0.56:7890 (看情况
git config --global https.proxy http://192.168.0.56:7890  (看情况
git config --global scoket.proxy scoket://192.168.0.56:7890
git config --global user.name bakamake
git config --global user.email chenzehuan883@gmail.com
scoop bucket add extras
scoop install innounp
scoop bucket add self https://github.com/bakamake/self-scoop-bucket
scoop bucket add nerd-fonts


scoop install self/pikpak
scoop install uv

scoop install okibcn_ScoopMaster/capcut
scoop install self/chatwise
scoop install self/cursor  X需要集成到电脑上，scoop不行
curl https://downloads.cursor.com/production/82ef0f61c01d079d1b7e5ab04d88499d5af500e3/win32/x64/user-setup/CursorUserSetup-x64-0.47.8.exe
scoop install okibcn_ScoopMaster/ecopaste
scoop install okibcn_ScoopMaster/em-client
scoop install extras/everything
scoop install extras/geekuninstaller
scoop install self/kugou
scoop install nerd-fonts/Maple-Mono
scoop install extras/notion
scoop install extras/telegram
scoop install adb
scoop install yt-dlp
scoop install vlc
scoop install ffmpeg



dev
scoop install self/msys2



重要的文件夹
%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup //开机自启





、

下载ODT部署office

解压/安装

 sudo .\setup.exe /configure  configuration-Office365-x64.xml
