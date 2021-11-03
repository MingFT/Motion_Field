@echo off
title Motion_Field
mode con cols=120 lines=40
color 07

echo.
echo.
echo.

echo              ███╗   ███╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗    ███████╗██╗███████╗██╗     ██████╗
echo              ████╗ ████║██╔═══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║    ██╔════╝██║██╔════╝██║     ██╔══██╗
echo              ██╔████╔██║██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║    █████╗  ██║█████╗  ██║     ██║  ██║
echo              ██║╚██╔╝██║██║   ██║   ██║   ██║██║   ██║██║╚██╗██║    ██╔══╝  ██║██╔══╝  ██║     ██║  ██║
echo              ██║ ╚═╝ ██║╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║    ██║     ██║███████╗███████╗██████╔╝
echo              ╚═╝     ╚═╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝     ╚═╝╚══════╝╚══════╝╚═════╝
echo.
echo.
echo              ===使用===
echo.
echo              快捷键：[A]添加  [B]备份  [C]拷贝  [R]渲染  [F]转换  [T]传输  [S]整理
echo.
echo              按[1]键 打开视频教程
echo.
echo.
echo.
echo              ===简介===
echo.
echo              Motion Field是一个帮助设计师管理工程文件的脚本工具集
echo.
echo              本工具使用的第三方开源软件有：ffmpeg  croc  chfs  ntop  imagemagick
echo.
echo              本工具同样开源免费，按[5]键 打开GitHub主页
echo.
echo.
echo.
echo              ===关于作者===
echo.
echo              by：大明MingFT
echo.
echo              [1]-视频教程     [2]-Artstation     [3]-BilBil      [4]-Behance     [5]-Github     



:start
choice /c 12345 /n >nul
goto Do%ERRORLEVEL%


::[1]-------------------------------------------
:Do1
start https://www.bilibili.com/video/BV11U4y1u7xG?p=2
goto start


::[2]-------------------------------------------
:Do2
start https://www.artstation.com/ming-ft
goto start


::[3]-------------------------------------------
:Do3
start https://space.bilibili.com/1897919
goto start


::[4]-------------------------------------------
:Do4
start https://www.behance.net/Ming-FT
goto start


::[5]-------------------------------------------
:Do5
start https://github.com/MingFT/Motion_Field
goto start
