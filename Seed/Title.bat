@echo off
title Motion_Field
mode con cols=120 lines=40
color 07

echo.
echo.
echo.

echo              �������[   �������[ �������������[ �����������������[�����[ �������������[ �������[   �����[    ���������������[�����[���������������[�����[     �������������[
echo              ���������[ ���������U�����X�T�T�T�����[�^�T�T�����X�T�T�a�����U�����X�T�T�T�����[���������[  �����U    �����X�T�T�T�T�a�����U�����X�T�T�T�T�a�����U     �����X�T�T�����[
echo              �����X���������X�����U�����U   �����U   �����U   �����U�����U   �����U�����X�����[ �����U    �����������[  �����U�����������[  �����U     �����U  �����U
echo              �����U�^�����X�a�����U�����U   �����U   �����U   �����U�����U   �����U�����U�^�����[�����U    �����X�T�T�a  �����U�����X�T�T�a  �����U     �����U  �����U
echo              �����U �^�T�a �����U�^�������������X�a   �����U   �����U�^�������������X�a�����U �^���������U    �����U     �����U���������������[���������������[�������������X�a
echo              �^�T�a     �^�T�a �^�T�T�T�T�T�a    �^�T�a   �^�T�a �^�T�T�T�T�T�a �^�T�a  �^�T�T�T�a    �^�T�a     �^�T�a�^�T�T�T�T�T�T�a�^�T�T�T�T�T�T�a�^�T�T�T�T�T�a
echo.
echo.
echo              ===ʹ��===
echo.
echo              ��ݼ���[A]���  [B]����  [C]����  [R]��Ⱦ  [F]ת��  [T]����  [S]����
echo.
echo              ��[1]�� ����Ƶ�̳�
echo.
echo.
echo.
echo              ===���===
echo.
echo              Motion Field��һ���������ʦ�������ļ��Ľű����߼�
echo.
echo              ������ʹ�õĵ�������Դ����У�ffmpeg  croc  chfs  ntop  imagemagick
echo.
echo              ������ͬ����Դ��ѣ���[5]�� ��GitHub��ҳ
echo.
echo.
echo.
echo              ===��������===
echo.
echo              by������MingFT
echo.
echo              [1]-��Ƶ�̳�     [2]-Artstation     [3]-BilBil      [4]-Behance     [5]-Github     



:start
choice /c 12345 /n >nul
goto Do%ERRORLEVEL%


::[1]-------------------------------------------
:Do1
start https://www.bilibili.com/video/BV11U4y1u7xG?p=2
goto start


::[2]-------------------------------------------
:Do2
start https://www.artstation.com/ming-ft
goto start


::[3]-------------------------------------------
:Do3
start https://space.bilibili.com/1897919
goto start


::[4]-------------------------------------------
:Do4
start https://www.behance.net/Ming-FT
goto start


::[5]-------------------------------------------
:Do5
start https://github.com/MingFT/Motion_Field
goto start
