@echo off
mode con cols=130 lines=40
color 07

cd ת��ʽ

::���ø�ʽmp3��wav��m4a�ȵ�
set form=mp3

::�������ʣ�192��256��320���ֱ�Ϊ ���и�����
set bit=256

::���ò�����32000��44100��48000���ֱ�Ϊ ���и�����
set samp=44100

md %form%
for %%a in ("*.mp3" "*.wav" "*.ogg" "*.flac" "*.aac" "*.m4a" "*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv") do "%~dp0ffmpeg.exe" -i "%%a" -vn -ar %samp% -b:a %bit%k -y "%form%\%%~na.%form%"