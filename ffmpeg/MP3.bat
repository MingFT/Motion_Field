@echo off
mode con cols=130 lines=40
color 07

cd 转格式

::设置格式mp3，wav，m4a等等
set form=mp3

::设置码率，192，256，320，分别为 低中高质量
set bit=256

::设置采样，32000，44100，48000，分别为 低中高质量
set samp=44100

md %form%
for %%a in ("*.mp3" "*.wav" "*.ogg" "*.flac" "*.aac" "*.m4a" "*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv") do "%~dp0ffmpeg.exe" -i "%%a" -vn -ar %samp% -b:a %bit%k -y "%form%\%%~na.%form%"