@echo off
mode con cols=130 lines=40
color 07

cd ת��ʽ

::���� ��-b:v 8000k��
set bit=-b:v 8000k

::ģʽӰ���ļ���С��Խ���ļ�ԽС��veryfast����fast����medium����slow����veryslow��
set mod=-preset medium

::�������С��Խ�ӽ�baseline����Խ�����ԽС��baseline����extended����main����high����high10����high 4:2:2����high 4:4:4��
set pro=-profile:v high

::ѹ���ȹ淶��1080p����4.1��2k����4.2��5��4k��5.1
set level=-level:v 4.1

::�������š�-vf scale=1920:-2��
::ָ�����š�-s 1920x1080��
::�Զ����ʡ�-crf 23����������Ϊ0��20��40��51ԽС����Խ��
::�̶��ļ���С��-fs 10MB��
::֡�ʡ�-r 30��
::�ر�������-an��

md mp4
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do "%~dp0ffmpeg.exe" -i "%%a" -pix_fmt yuv420p -vcodec libx264 %mod% %bit% %pro% %level% -y "mp4\%%~na.mp4"