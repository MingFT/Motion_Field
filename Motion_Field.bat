@echo off

::�رտ��ٱ༭ģʽ
reg add HKEY_CURRENT_USER\Console /v QuickEdit /t REG_DWORD /d 00000000 /f

::���ڴ�С����----------------------------------------------------------------------------
:mod
title Motion_Field
mode con cols=30 lines=20
color 07


::���ٴ�----------------------------------------------------------------------------
:start

cls
cd %~dp0

echo -----------------
echo    �� �� �� �� 
echo -----------------
echo 1_Assets
echo 2_Build
echo 3_Ref
echo 4_Preview
echo 5_Render
echo 6_Final_Render
echo 7_Storyboard
echo 8_Overview
echo Z_��Ŀ¼
echo.
echo 0_���𹤳�
echo H_����

choice /c 12345678zcatrbfs0h /n >nul
goto Do%ERRORLEVEL%

::��1��+++++++++++++++++++++++++++
:Do1
cd..
start "" "1_Assets"
goto start

::��2��+++++++++++++++++++++++++++
:Do2
cd..
start "" "2_Build"
goto start

::��3��+++++++++++++++++++++++++++
:Do3
cd..
start "" "3_Ref"
goto start

::��4��+++++++++++++++++++++++++++
:Do4
cd..
start "" "4_Preview"
goto start

::��5��+++++++++++++++++++++++++++
:Do5
cd..
start "" "5_Render"
goto start

::��6��+++++++++++++++++++++++++++
:Do6
cd..
start "" "6_Final_Render"
goto start

::��7��+++++++++++++++++++++++++++
:Do7
cd..
start "" "7_Storyboard"
goto start

::��8��+++++++++++++++++++++++++++
:Do8
cd..
start "" "8_Overview"
goto start

::��z9��+++++++++++++++++++++++++++
:Do9
cd..
start "" "%cd%"
goto start


::��C10������·��----------------------------------------------------------------------------
:Do10

cls
color 0e

echo -----------------
echo    �� �� · �� 
echo -----------------
echo 1_Assets
echo 2_Build
echo 3_Ref
echo 4_Preview
echo 5_Render
echo 6_Final_Render
echo 7_Storyboard
echo 8_Overview
echo Z_��Ŀ¼
echo.
echo Q_����

choice /c 12345678zq /n >nul
goto Do%ERRORLEVEL%

::��1��+++++++++++++++++++++++++++
:Do1
cd..
cd 1_Assets
echo %cd%\|clip
goto mod

::��2��+++++++++++++++++++++++++++
:Do2
cd..
cd 2_Build
echo %cd%\|clip
goto mod

::��3��+++++++++++++++++++++++++++
:Do3
cd..
cd 3_Ref
echo %cd%\|clip
goto mod

::��4��+++++++++++++++++++++++++++
:Do4
cd..
cd 4_Preview
echo %cd%\|clip
goto mod

::��5��+++++++++++++++++++++++++++
:Do5
cd..
cd 5_Render
echo %cd%\|clip
goto mod

::��6��+++++++++++++++++++++++++++
:Do6
cd..
cd 6_Final_Render
echo %cd%\|clip
goto mod


::��7��+++++++++++++++++++++++++++
:Do7
cd..
cd 7_Storyboard
echo %cd%\|clip
goto mod

::��8��+++++++++++++++++++++++++++
:Do8
cd..
cd 8_Overview
echo %cd%\|clip
goto mod

::��9��+++++++++++++++++++++++++++
:Do9
cd..
echo %cd%\|clip
goto mod

::��10��+++++++++++++++++++++++++++
:Do10
cls
goto mod

::��A11�����ģʽ--------------------------------------------------------------------------
:Do11

cls
color 0e
cd %~dp0


echo -----------------
echo    �� �� ģ ʽ 
echo -----------------
echo.
echo [4]_Preview+1
echo [E]_Preview+N
echo.
echo [5]_Render+1
echo [R]_Render+N
echo.
echo [6]_Final_Render+1
echo [8]_Overview+1
echo.
echo [Q]_����
echo.


choice /c 456er8q /n >nul
goto Do%ERRORLEVEL%

::��4��+++++++++++++++++++++++++++
:Do1
cd..
cd 4_Preview

for /L %%a in (1,1,9999) do (
if %%a lss 10 (

echo %cd%\C0%%a\|clip
md C0%%a

) else (

echo %cd%\C%%a\|clip
md C%%a

)
)&&goto Do11

::��5��+++++++++++++++++++++++++++
:Do2
cd..
cd 5_Render

for /L %%a in (1,1,9999) do (
if %%a lss 10 (

echo %cd%\C0%%a\|clip
md C0%%a

) else (

echo %cd%\C%%a\|clip
md C%%a

)
)&&goto Do11


::��6��+++++++++++++++++++++++++++
:Do3
cd..
cd 6_Final_Render
set month=%date:~5,2%
set day=%date:~8,2%
md %month%_%day%
cd %month%_%day%
goto Do11

::��ʱ���� ���������ļ���·��
echo %cd%\|clip
start "" "%cd%"

::��E��+++++++++++++++++++++++++++
:Do4
cd..
cd 4_Preview
set /p ��ͷ��=Ҫ���������ļ��У���
for /L %%a in (1,1,%��ͷ��%) do (
if %%a lss 10 (

md C0%%a

) else (

md C%%a

)
)
goto Do11

::��R��+++++++++++++++++++++++++++
:Do5
cd..
cd 5_Render

set /p ��ͷ��=Ҫ���������ļ��У���
for /L %%a in (1,1,%��ͷ��%) do (
if %%a lss 10 (

md C0%%a

) else (

md C%%a

)
)
goto Do11

::��8��+++++++++++++++++++++++++++
:Do6
cd..
cd 8_Overview
set month=%date:~5,2%
set day=%date:~8,2%
md %month%_%day%
cd %month%_%day%
goto Do11

::��ʱ���� ���������ļ���·��
echo %cd%\|clip
start "" "%cd%"

::��Q��+++++++++++++++++++++++++++
:Do7
goto mod


::��T12������ģʽ---------------------------------------------------------------------------
:Do12

cls
color 0e
cd %~dp0

echo -----------------
echo    �� �� �� ��
echo -----------------
echo.
echo [1]-����-�򿪹����ļ���
echo [2]-����-���ļ�
echo.
echo [3]-����-�򿪹����ļ���
echo [4]-����-���ļ�
echo.
echo [Q]_����

choice /c 1234q /n >nul
goto Do%ERRORLEVEL%

::[1]+++++++++++++++++++++++++++++
:Do1
start "" "chfs\����_�ļ�����"
goto Do12

::[2]+++++++++++++++++++++++++++++
:Do2
cd chfs
start cmd /k chfs_����.bat
cmd /c chfs����ҳ.bat
goto Do12

::[3]+++++++++++++++++++++++++++++
:Do3
start "" "croc\����_���ļ�"
goto Do12

::[4]+++++++++++++++++++++++++++++
:Do4
cd croc
start cmd /c 1��������.bat

timeout /t 1 /nobreak > nul

start cmd /k 2�����ļ�.bat
goto Do12


::[5Q]+++++++++++++++++++++++++++++
:Do5
goto mod

::��R13����Ⱦ----------------------------------------------------------------------------
:Do13

cls
color 0e
cd %~dp0

echo -----------------
echo    �� Ⱦ ģ ʽ
echo -----------------
echo.
echo [1]-��Blender�ļ���
echo [2]-Blender������Ⱦ
echo [3]-Blender������Ⱦ(�Զ��ػ�)
echo.
echo [4]-��ʱ�ػ�
echo [5]-ȡ��-��ʱ�ػ�
echo.
echo [6]-GPU���
echo [7]-ȫ�ּ��
echo.
echo [Q]-����
choice /c 1234567q /n >nul
goto Do%ERRORLEVEL%

::[1]+++++++++++++++++++++++++++++
:Do1
cd..
start "" "2_Build\Blender"
goto Do13

::[2]+++++++++++++++++++++++++++++
:Do2
cd..
cd 2_Build
cd Blender
start cmd /c for %%a in ("*.blend") do blender -b "%%a" -a
goto Do13

::[3]+++++++++++++++++++++++++++++
:Do3
cd..
cd 2_Build
cd Blender
start cmd /c for %%a in ("*.blend") do blender -b "%%a" -a^&^&shutdown -s -f -t 30
goto Do13

::[4]+++++++++++++++++++++++++++++
:Do4
echo.
echo ���������ֲ��س� ��������1������1Сʱ��ػ�
echo.
set /p shi=��Сʱ��ػ�����
set miao=3600
set /a down=%shi% * %miao%
shutdown /s /f /t %down%
echo.
echo \\\\\\\\\\\\\\\\\\\\\\\\\\
echo     ���� %shi% Сʱ��ػ�
echo \\\\\\\\\\\\\\\\\\\\\\\\\\
echo.
timeout /t 3 /nobreak > nul
goto Do13

::[5]+++++++++++++++++++++++++++++
:Do5
shutdown /a
if %errorlevel% == 0 (
echo.
echo ///////////////////////
echo   ��ʱ�ػ�����ȡ����
echo //////////////////////
echo.
) else (
echo.
echo ///////////////////////////
echo   !! ��̖�C �o���Kֹ !!
echo //////////////////////////
echo.
)
timeout /t 3 /nobreak > nul
goto Do13

::[6]+++++++++++++++++++++++++++++
:Do6
cd GPU
start cmd /c GPU���.bat
goto Do13

::[7]+++++++++++++++++++++++++++++
:Do7
cd GPU
start "" "ntop.exe"
goto Do13

::[Q]+++++++++++++++++++++++++++++
:Do8
goto mod

::��B14������----------------------------------------------------------------------------
:Do14

cls
color 0e
cd %~dp0

echo -----------------
echo    �� �� ģ ʽ
echo -----------------
echo.
echo [1]-���ñ���·��
echo.
echo [2]-����
echo [3]-ͬ��
echo [4]-�Զ�ͬ��
echo.
echo [5]-�򿪱����ļ���
echo.
echo [Q]-����
choice /c 12345q /n >nul
goto Do%ERRORLEVEL%

::[1]------------------------------------
:Do1
cd Backup
start "" "path.txt"
goto Do14

::[2]------------------------------------
:Do2
cd Backup
start cmd /c B_����.bat >nul
goto Do14

::[3]------------------------------------
:Do3
cd Backup
start cmd /c B_ͬ��.bat >nul
goto Do14

::[4]------------------------------------
:Do4
cd Backup
start cmd /c B_�Զ�ͬ��.bat >nul
goto Do14

::[5]------------------------------------
:Do5
cd Backup
(Set /p L1=)<path.txt
start "" "%L1%"
goto Do14

::[Q6]------------------------------------
:Do6
goto mod

::��F15��ת��----------------------------------------------------------------------------
:Do15

cls
color 0e
cd %~dp0

echo -----------------
echo    ת �� ģ ʽ
echo -----------------
echo.
echo [1]-��Ҫת������Ƶ-�ŵ�����
echo.
echo [2]-MP4
echo [3]-GIF
echo [4]-webp(��ͼ)
echo [5]-MP3
echo.
echo [6]-JPG
echo [7]-PNG
echo.
echo [Q]-����
choice /c 1234567q /n >nul
goto Do%ERRORLEVEL%

::[1]------------------------------------
:Do1
cd ffmpeg
start "" "ת��ʽ"
goto Do15

::[2]------------------------------------
:Do2
cd ffmpeg
start cmd /c MP4.bat
goto Do15

::[3]------------------------------------
:Do3
cd ffmpeg
start cmd /c GIF.bat
goto Do15

::[4]------------------------------------
:Do4
cd ffmpeg
start cmd /c WEBP.bat
goto Do15

::[5]------------------------------------
:Do5
cd ffmpeg
start cmd /c MP3.bat
goto Do15

::[6]------------------------------------
:Do6
cd ffmpeg
start cmd /c JPG.bat
goto Do15

::[7]------------------------------------
:Do7
cd ffmpeg
start cmd /c PNG.bat
goto Do15

::[Q8]------------------------------------
:Do8
goto mod

::��S16��sort����----------------------------------------------------------------------------
:Do16

cls
color 0e
cd %~dp0

echo -----------------
echo    �� �� �� ��
echo -----------------
echo.
echo [1]-�������Ref
echo.
echo [Q]-����
choice /c 1q /n >nul
goto Do%ERRORLEVEL%

::[1]------------------------------------
:Do1
cd..
cd 3_Ref

::ģ��
for %%a in ("*.obj" "*.fbx" "*.abc" "*.c4d" "*.gltf" "*.blend" "*.max" "*.ma" "*.mb" "*.stl" "*.ztl" "*.mtl") do move "%%a" mod\"%%a"
::��Ƶ
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do move "%%a" video\"%%a"
::ͼƬ
for %%a in ("*.jpg" "*.png" "*.tga" "*.webp" "*.jpg" "*.exr" "*.hdr" "*.tif") do move "%%a" image\"%%a"

goto Do16


::[2]------------------------------------
:Do2
goto mod


::��017�����𹤳�----------------------------------------------------------------------------
:Do17

cd..

md 6_Final_Render
md 4_Preview
md 5_Render
md 8_Overview

::Build-----------

md 2_Build
md 2_Build\UE
md 2_Build\C4D
md 2_Build\Blender
md 2_Build\Blender\Render_Off
md 2_Build\AE
md 2_Build\PS
md 2_Build\DFQ

::Assets-----------
md 1_Assets
md 1_Assets\Image
md 1_Assets\Mod
md 1_Assets\Textures
md 1_Assets\VFX
md 1_Assets\Video
md 1_Assets\Sound_Effect
md 1_Assets\Sound_BGM

::Ref-----------
md 3_Ref
md 3_Ref\image
md 3_Ref\mod
md 3_Ref\video

::Storyboard-----------
md 7_Storyboard
md 7_Storyboard\S_render
md 7_Storyboard\S_Composite
md 7_Storyboard\S_Build
md 7_Storyboard\Style_Frame

::�Լ�
set Դ����=%~n0

::�ϼ��ļ�������
for /f "delims=" %%i in ("%cd%") do set folder=%%~ni
echo %folder%

::��ݷ�ʽ
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\%folder%.lnk""):b.TargetPath=""%~dp0%Դ����%"":b.WorkingDirectory=""%~dp0"":b.Save:close")

goto mod

::��H18������----------------------------------------------------------------------------
:Do18
cd Seed
start cmd /c Title.bat
goto mod