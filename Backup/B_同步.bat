@echo off
mode con cols=120 lines=35
color 07

::����ͬ��·��%L1%
(Set /p L1=)<path.txt

::�ϼ��ļ�������%upp%
for %%a in ("%~dp0\..\..") do set upp=%%~nxa

::��ʼͬ��
robocopy %cd%\..\.. %L1%\%upp%\Sync\%upp% /MIR /MT:16 /R:1 /W:1 /TEE /LOG:log.txt

::��ͬ����־���ƶ���ͬ���ļ���
move log.txt %L1%\%upp%\Sync\%upp%\log.txt

::�򿪱����ļ���
start "" "%L1%\%upp%\Sync\%upp%"

exit