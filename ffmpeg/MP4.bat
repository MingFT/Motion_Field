@echo off
mode con cols=130 lines=40
color 07

cd 转格式

::码率 【-b:v 8000k】
set bit=-b:v 8000k

::模式影响文件大小。越慢文件越小【veryfast】【fast】【medium】【slow】【veryslow】
set mod=-preset medium

::画质与大小，越接近baseline画质越差，但是越小【baseline】【extended】【main】【high】【high10】【high 4:2:2】【high 4:4:4】
set pro=-profile:v high

::压缩比规范，1080p就用4.1，2k就用4.2和5，4k用5.1
set level=-level:v 4.1

::比例缩放【-vf scale=1920:-2】
::指定缩放【-s 1920x1080】
::自动码率【-crf 23】可以设置为0，20，40，51越小质量越高
::固定文件大小【-fs 10MB】
::帧率【-r 30】
::关闭声音【-an】

md mp4
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do "%~dp0ffmpeg.exe" -i "%%a" -pix_fmt yuv420p -vcodec libx264 %mod% %bit% %pro% %level% -y "mp4\%%~na.mp4"