@echo off
mode con cols=80 lines=35
color 07

::��ȡIP-------------------------%str%---------------------------------------------
ipconfig > ip.txt
for /f "tokens=1,16" %%i in (ip.txt) do if %%i==IPv4 echo %%j > ip.txt
set /P str= < ip.txt
set str=%str: =%
del ip.txt

::��ȡ����-----------------------------%mima%-----------------------------------------
set /p mima=<./mima.txt

del mima.txt

::���������ļ���-------------------------------------------------------------------------
md ���շ�\get >nul||rd/s/q ���շ�\get >nul&&md ���շ�\get >nul

::����croc�������ļ���
copy croc.exe ���շ�\get\croc.exe >nul

::�������սű�
(
echo ^@echo off
echo ^mode con cols=130 lines=40
echo ^echo �����У��Ե� 1~2����......
echo ^croc.exe --relay %str%:1900 --yes %mima%
echo ^pause
)>���շ�/get/����_�����ļ�.bat

::�����˿�
(
echo ^@echo off
echo ^mode con cols=30 lines=8
echo ^croc.exe relay --ports 1900
)>gofor.bat
start gofor.bat

::�ȴ�5��
ping /n 3 127.0.0.1>nul

::ɾ��gofor��bat
del gofor.bat

start "" "���շ�"

echo.
echo.
echo -------------------------------------------------------------
echo �ѡ�get���ļ��� ���Ƹ��������
echo.
echo ������˫�������еġ�����_�����ļ�.bat��
echo -------------------------------------------------------------
echo.
echo -------------------------------------------------------------
echo ��Ҫ�ر�������2�����ڣ��ȶԷ��������ļ����ٹرա�
echo -------------------------------------------------------------
echo.
echo.

::����file�ļ���
croc.exe --relay %str%:1900 send --code %mima% ����_���ļ�

echo.
echo ---------------------------------------------
echo ���Թر���2�������ˡ�
echo ---------------------------------------------
rd/s/q ���շ�\get

pause