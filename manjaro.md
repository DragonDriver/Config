# manjaro踩坑总结
-----
### 笔记本型号
-----

机械革命 Z2 Air

------
### WiFi

问题：manjaro中WiFi按钮无法打开，WiFi无法连接

```shell
$ wifi
wifi	= off(hardware)
$ rfkill list
0: phy0: Wireless LAN
		Soft blocked: no
		Hard blocked: yes
```

分析：手残不小心按下Fn+F4关闭了WiFi开关
解决：按下Fn+F4重新打开WiFi开关

```shell
$ wifi
wifi	= on
$ rfkill list
0: phy0: Wireless LAN
		Soft blocked: no
		Hard blocked: no
```

-----
### 安装&启动

问题：安装时无法进入系统，启动后无法进入桌面
分析：NVIDIA双显卡驱动无法使用
解决：禁用N卡驱动，具体见[博客](https://www.jianshu.com/p/c07daada0b52)
注：不建议直接修改/boot/grub/grub.cfg，建议如下：

```shell
$ vim /etc/default/grub
```

将
**GRUB_CMDLINE_LINUX_DEFAULT="quiet"**
改为
**GRUB_CMDLINE_LINUX_DEFAULT="quiet nouveau.modeset=0"**

然后执行

```shell
$ sudo grub-mkconfig -o /boot/grub/grub.cfg	#更新grub
```

------
### 休眠&挂起

问题：manjaro挂起或者休眠后无法唤醒
分析：电源管理服务死锁
解决：直接关闭**tlp**服务，具体见[论坛](https://forum.manjaro.org/t/system-goes-to-sleep-and-wont-wake-up/64490/2)

```shell
$ systemctl stop tlp.service #关闭tlp服务，测试是否有效
$ systemctl disable tlp.service #若有效(即系统可以唤醒)，禁用tlp服务
$ systemctl mask tlp.service #屏蔽其他服务对tlp服务的调用
```

注：建议打开**系统设置**->**硬件**->**电源管理**，将所有**挂起**或者**休眠**操作改为**关闭屏幕**，防止系统死锁。