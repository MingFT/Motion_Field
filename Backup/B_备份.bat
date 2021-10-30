@echo off
mode con cols=120 lines=35
color 07

::备份路径%L1%
(Set /p L1=)<path.txt

::上级文件夹名字%upp%
for %%a in ("%~dp0\..\..") do set upp=%%~nxa

::去掉空格%str%
set str=%time:~0,2%
set str=%str: =%

::设置时间
set timest=%date:~0,4%_%date:~5,2%%date:~8,2%_%str%-%time:~3,2%-%time:~6,2%

::开始备份
robocopy "%cd%\..\.." "%L1%\%upp%\backup_%timest%\%upp%" /MIR /MT:16 /R:1 /W:1 /TEE /LOG:log.txt

::把备份日志，移动到同步文件夹
move "log.txt" "%L1%\%upp%\backup_%timest%\%upp%\log.txt"

::打开备份文件夹
start "" "%L1%\%upp%\backup_%timest%\%upp%"

exit