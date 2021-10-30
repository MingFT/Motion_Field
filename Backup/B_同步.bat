@echo off
mode con cols=120 lines=35
color 07

::设置同步路径%L1%
(Set /p L1=)<path.txt

::上级文件夹名字%upp%
for %%a in ("%~dp0\..\..") do set upp=%%~nxa

::开始同步
robocopy %cd%\..\.. %L1%\%upp%\Sync\%upp% /MIR /MT:16 /R:1 /W:1 /TEE /LOG:log.txt

::把同步日志，移动到同步文件夹
move log.txt %L1%\%upp%\Sync\%upp%\log.txt

::打开备份文件夹
start "" "%L1%\%upp%\Sync\%upp%"

exit