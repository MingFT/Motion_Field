@echo off
mode con cols=130 lines=40
color 07
cd 转格式

::分辨率，默认【-vf "scale=800:-2"】
set max=-vf "scale=800:-2"

::帧率，默认【-r 24】
set fps=-r 30

::质量
set quality=100

md webp
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do "%~dp0ffmpeg.exe" -i "%%a" %max% -q:v %quality% -pix_fmt yuv420p %fps% -loop 0 -y "webp\%%~na.webp"
