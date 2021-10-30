@echo off
mode con cols=130 lines=40
color 07

cd 转格式

::设置大小
set max=800

::设置fps
set fps=30

::匹配原素材的大小和fps，就删除后面的数值

md gif_%fps%fps
md gif_color_%fps%fps
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do "%~dp0ffmpeg.exe" -i "%%a" -vf fps=%fps%,scale=%max%:-2:flags=lanczos,palettegen -y "gif_color_%fps%fps\%%~na.png"
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do "%~dp0ffmpeg.exe" -i "%%a" -i "gif_color_%fps%fps\%%~na.png" -filter_complex "fps=%fps%,scale=%max%:-2:flags=lanczos[x];[x][1:v]paletteuse" -loop 0 -y "gif_%fps%fps\%%~na.gif"
rd/s/q gif_color_%fps%fps