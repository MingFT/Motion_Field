@echo off&setlocal enabledelayedexpansion

mode con cols=30 lines=20
color 07
::设置要生成的位数
set ws=16

set str=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ
for /l %%a in (1,1,%ws%) do (
    set /a num=!random!%%62
    call set zf=%%str:~!num!,1%%
    set pw=!pw!!zf!
)
echo !pw!>mima.txt