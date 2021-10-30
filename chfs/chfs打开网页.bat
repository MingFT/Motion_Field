@echo off
mode con cols=30 lines=20
color 07

ipconfig > ip.txt
for /f "tokens=1,16" %%i in (ip.txt) do if %%i==IPv4 echo %%j > ip.txt
set /P str= < ip.txt
set str=%str: =%
del ip.txt

echo http://%str%:8090|clip

start http://%str%:8090