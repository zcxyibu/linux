vnc用来远程连接登录linux机器图形化页面
vnc linux界面  
`yum groupinstall GNOME Desktop Graphical Administration Tools`

1. `yum install -y tigervnc-server tigervnc`  
2. `cp libsystemdsystemvncserver@.service etcsystemdsystemvncserver@1.service;`  
    vim etcsystemdsystemvncserver@1.service 修改下 “USR”  
3. `systemctl daemon-reload`  
4. `vncpasswd`  
5. `systemctl start vncserver@1.service`  
6. ps -ef|grep vnc
