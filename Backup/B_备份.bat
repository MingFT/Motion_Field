@echo off
mode con cols=120 lines=35
color 07

::����·��%L1%
(Set /p L1=)<path.txt

::�ϼ��ļ�������%upp%
for %%a in ("%~dp0\..\..") do set upp=%%~nxa

::ȥ���ո�%str%
set str=%time:~0,2%
set str=%str: =%

::����ʱ��
set timest=%date:~0,4%_%date:~5,2%%date:~8,2%_%str%-%time:~3,2%-%time:~6,2%

::��ʼ����
robocopy "%cd%\..\.." "%L1%\%upp%\backup_%timest%\%upp%" /MIR /MT:16 /R:1 /W:1 /TEE /LOG:log.txt

::�ѱ�����־���ƶ���ͬ���ļ���
move "log.txt" "%L1%\%upp%\backup_%timest%\%upp%\log.txt"

::�򿪱����ļ���
start "" "%L1%\%upp%\backup_%timest%\%upp%"

exit