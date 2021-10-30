@echo off
mode con cols=80 lines=35
color 07

::获取IP-------------------------%str%---------------------------------------------
ipconfig > ip.txt
for /f "tokens=1,16" %%i in (ip.txt) do if %%i==IPv4 echo %%j > ip.txt
set /P str= < ip.txt
set str=%str: =%
del ip.txt

::读取密码-----------------------------%mima%-----------------------------------------
set /p mima=<./mima.txt

del mima.txt

::创建接收文件夹-------------------------------------------------------------------------
md 接收方\get >nul||rd/s/q 接收方\get >nul&&md 接收方\get >nul

::复制croc到接收文件夹
copy croc.exe 接收方\get\croc.exe >nul

::创建接收脚本
(
echo ^@echo off
echo ^mode con cols=130 lines=40
echo ^echo 连接中，稍等 1~2分钟......
echo ^croc.exe --relay %str%:1900 --yes %mima%
echo ^pause
)>接收方/get/点我_接收文件.bat

::创建端口
(
echo ^@echo off
echo ^mode con cols=30 lines=8
echo ^croc.exe relay --ports 1900
)>gofor.bat
start gofor.bat

::等待5秒
ping /n 3 127.0.0.1>nul

::删除gofor子bat
del gofor.bat

start "" "接收方"

echo.
echo.
echo -------------------------------------------------------------
echo 把【get】文件夹 复制给你的盆友
echo.
echo 并叫他双击打开其中的【点我_接收文件.bat】
echo -------------------------------------------------------------
echo.
echo -------------------------------------------------------------
echo 不要关闭现在这2个窗口，等对方接收完文件，再关闭。
echo -------------------------------------------------------------
echo.
echo.

::发送file文件夹
croc.exe --relay %str%:1900 send --code %mima% 外网_传文件

echo.
echo ---------------------------------------------
echo 可以关闭这2个窗口了。
echo ---------------------------------------------
rd/s/q 接收方\get

pause