#!/bin/bash
echo "安装字体fonts"
echo "from https://www.cnblogs.com/ace-wu/p/6628066.html"
cd wps_symbol_fonts
sudo cp * /usr/share/fonts
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
cd ..
echo "字体安装完成"
