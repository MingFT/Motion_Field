@echo off
mode con cols=130 lines=40
color 07
cd ת��ʽ

::�ֱ��ʣ�Ĭ�ϡ�-vf "scale=800:-2"��
set max=-vf "scale=800:-2"

::֡�ʣ�Ĭ�ϡ�-r 24��
set fps=-r 30

::����
set quality=100

md webp
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do "%~dp0ffmpeg.exe" -i "%%a" %max% -q:v %quality% -pix_fmt yuv420p %fps% -loop 0 -y "webp\%%~na.webp"
