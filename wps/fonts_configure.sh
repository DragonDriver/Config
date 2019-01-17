#!/bin/bash
echo "安装字体fonts"
echo "from https://www.cnblogs.com/ace-wu/p/6628066.html"
cd wps_symbol_fonts
sudo cp * /usr/share/fonts
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
cd ..
sudo apt-get install ttf-wqy-microhei #文泉驿-微米黑
sudo apt-get install ttf-wqy-zenhei #文泉驿-正黑
sudo apt-get install xfonts-wqy #文泉驿-点阵宋体
echo "字体安装完成"
