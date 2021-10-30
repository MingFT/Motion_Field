@echo off

::关闭快速编辑模式
reg add HKEY_CURRENT_USER\Console /v QuickEdit /t REG_DWORD /d 00000000 /f

::窗口大小名称----------------------------------------------------------------------------
:mod
title Motion_Field
mode con cols=30 lines=20
color 07


::快速打开----------------------------------------------------------------------------
:start

cls
cd %~dp0

echo -----------------
echo    快 速 打 开 
echo -----------------
echo 1_Assets
echo 2_Build
echo 3_Ref
echo 4_Preview
echo 5_Render
echo 6_Final_Render
echo 7_Storyboard
echo 8_Overview
echo Z_根目录
echo.
echo 0_部署工程
echo H_帮助

choice /c 12345678zcatrbfs0h /n >nul
goto Do%ERRORLEVEL%

::【1】+++++++++++++++++++++++++++
:Do1
cd..
start "" "1_Assets"
goto start

::【2】+++++++++++++++++++++++++++
:Do2
cd..
start "" "2_Build"
goto start

::【3】+++++++++++++++++++++++++++
:Do3
cd..
start "" "3_Ref"
goto start

::【4】+++++++++++++++++++++++++++
:Do4
cd..
start "" "4_Preview"
goto start

::【5】+++++++++++++++++++++++++++
:Do5
cd..
start "" "5_Render"
goto start

::【6】+++++++++++++++++++++++++++
:Do6
cd..
start "" "6_Final_Render"
goto start

::【7】+++++++++++++++++++++++++++
:Do7
cd..
start "" "7_Storyboard"
goto start

::【8】+++++++++++++++++++++++++++
:Do8
cd..
start "" "8_Overview"
goto start

::【z9】+++++++++++++++++++++++++++
:Do9
cd..
start "" "%cd%"
goto start


::【C10】复制路径----------------------------------------------------------------------------
:Do10

cls
color 0e

echo -----------------
echo    复 制 路 径 
echo -----------------
echo 1_Assets
echo 2_Build
echo 3_Ref
echo 4_Preview
echo 5_Render
echo 6_Final_Render
echo 7_Storyboard
echo 8_Overview
echo Z_根目录
echo.
echo Q_返回

choice /c 12345678zq /n >nul
goto Do%ERRORLEVEL%

::【1】+++++++++++++++++++++++++++
:Do1
cd..
cd 1_Assets
echo %cd%\|clip
goto mod

::【2】+++++++++++++++++++++++++++
:Do2
cd..
cd 2_Build
echo %cd%\|clip
goto mod

::【3】+++++++++++++++++++++++++++
:Do3
cd..
cd 3_Ref
echo %cd%\|clip
goto mod

::【4】+++++++++++++++++++++++++++
:Do4
cd..
cd 4_Preview
echo %cd%\|clip
goto mod

::【5】+++++++++++++++++++++++++++
:Do5
cd..
cd 5_Render
echo %cd%\|clip
goto mod

::【6】+++++++++++++++++++++++++++
:Do6
cd..
cd 6_Final_Render
echo %cd%\|clip
goto mod


::【7】+++++++++++++++++++++++++++
:Do7
cd..
cd 7_Storyboard
echo %cd%\|clip
goto mod

::【8】+++++++++++++++++++++++++++
:Do8
cd..
cd 8_Overview
echo %cd%\|clip
goto mod

::【9】+++++++++++++++++++++++++++
:Do9
cd..
echo %cd%\|clip
goto mod

::【10】+++++++++++++++++++++++++++
:Do10
cls
goto mod

::【A11】添加模式--------------------------------------------------------------------------
:Do11

cls
color 0e
cd %~dp0


echo -----------------
echo    添 加 模 式 
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
echo [Q]_返回
echo.


choice /c 456er8q /n >nul
goto Do%ERRORLEVEL%

::【4】+++++++++++++++++++++++++++
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

::【5】+++++++++++++++++++++++++++
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


::【6】+++++++++++++++++++++++++++
:Do3
cd..
cd 6_Final_Render
set month=%date:~5,2%
set day=%date:~8,2%
md %month%_%day%
cd %month%_%day%
goto Do11

::暂时留存 复制日期文件夹路径
echo %cd%\|clip
start "" "%cd%"

::【E】+++++++++++++++++++++++++++
:Do4
cd..
cd 4_Preview
set /p 镜头数=要创建几个文件夹？：
for /L %%a in (1,1,%镜头数%) do (
if %%a lss 10 (

md C0%%a

) else (

md C%%a

)
)
goto Do11

::【R】+++++++++++++++++++++++++++
:Do5
cd..
cd 5_Render

set /p 镜头数=要创建几个文件夹？：
for /L %%a in (1,1,%镜头数%) do (
if %%a lss 10 (

md C0%%a

) else (

md C%%a

)
)
goto Do11

::【8】+++++++++++++++++++++++++++
:Do6
cd..
cd 8_Overview
set month=%date:~5,2%
set day=%date:~8,2%
md %month%_%day%
cd %month%_%day%
goto Do11

::暂时留存 复制日期文件夹路径
echo %cd%\|clip
start "" "%cd%"

::【Q】+++++++++++++++++++++++++++
:Do7
goto mod


::【T12】传输模式---------------------------------------------------------------------------
:Do12

cls
color 0e
cd %~dp0

echo -----------------
echo    传 输 文 件
echo -----------------
echo.
echo [1]-内网-打开共享文件夹
echo [2]-内网-传文件
echo.
echo [3]-外网-打开共享文件夹
echo [4]-外网-传文件
echo.
echo [Q]_返回

choice /c 1234q /n >nul
goto Do%ERRORLEVEL%

::[1]+++++++++++++++++++++++++++++
:Do1
start "" "chfs\内网_文件共享"
goto Do12

::[2]+++++++++++++++++++++++++++++
:Do2
cd chfs
start cmd /k chfs_启动.bat
cmd /c chfs打开网页.bat
goto Do12

::[3]+++++++++++++++++++++++++++++
:Do3
start "" "croc\外网_传文件"
goto Do12

::[4]+++++++++++++++++++++++++++++
:Do4
cd croc
start cmd /c 1生成密码.bat

timeout /t 1 /nobreak > nul

start cmd /k 2传输文件.bat
goto Do12


::[5Q]+++++++++++++++++++++++++++++
:Do5
goto mod

::【R13】渲染----------------------------------------------------------------------------
:Do13

cls
color 0e
cd %~dp0

echo -----------------
echo    渲 染 模 式
echo -----------------
echo.
echo [1]-打开Blender文件夹
echo [2]-Blender批量渲染
echo [3]-Blender批量渲染(自动关机)
echo.
echo [4]-定时关机
echo [5]-取消-定时关机
echo.
echo [6]-GPU监控
echo [7]-全局监控
echo.
echo [Q]-返回
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
echo 请输入数字并回车 例如输入1，就是1小时后关机
echo.
set /p shi=几小时后关机？：
set miao=3600
set /a down=%shi% * %miao%
shutdown /s /f /t %down%
echo.
echo \\\\\\\\\\\\\\\\\\\\\\\\\\
echo     将在 %shi% 小时后关机
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
echo   定时关机，已取消。
echo //////////////////////
echo.
) else (
echo.
echo ///////////////////////////
echo   !! 初號機 無法終止 !!
echo //////////////////////////
echo.
)
timeout /t 3 /nobreak > nul
goto Do13

::[6]+++++++++++++++++++++++++++++
:Do6
cd GPU
start cmd /c GPU监控.bat
goto Do13

::[7]+++++++++++++++++++++++++++++
:Do7
cd GPU
start "" "ntop.exe"
goto Do13

::[Q]+++++++++++++++++++++++++++++
:Do8
goto mod

::【B14】备份----------------------------------------------------------------------------
:Do14

cls
color 0e
cd %~dp0

echo -----------------
echo    备 份 模 式
echo -----------------
echo.
echo [1]-设置备份路径
echo.
echo [2]-备份
echo [3]-同步
echo [4]-自动同步
echo.
echo [5]-打开备份文件夹
echo.
echo [Q]-返回
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
start cmd /c B_备份.bat >nul
goto Do14

::[3]------------------------------------
:Do3
cd Backup
start cmd /c B_同步.bat >nul
goto Do14

::[4]------------------------------------
:Do4
cd Backup
start cmd /c B_自动同步.bat >nul
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

::【F15】转换----------------------------------------------------------------------------
:Do15

cls
color 0e
cd %~dp0

echo -----------------
echo    转 换 模 式
echo -----------------
echo.
echo [1]-把要转换的视频-放到这里
echo.
echo [2]-MP4
echo [3]-GIF
echo [4]-webp(动图)
echo [5]-MP3
echo.
echo [6]-JPG
echo [7]-PNG
echo.
echo [Q]-返回
choice /c 1234567q /n >nul
goto Do%ERRORLEVEL%

::[1]------------------------------------
:Do1
cd ffmpeg
start "" "转格式"
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

::【S16】sort分类----------------------------------------------------------------------------
:Do16

cls
color 0e
cd %~dp0

echo -----------------
echo    整 理 分 类
echo -----------------
echo.
echo [1]-整理分类Ref
echo.
echo [Q]-返回
choice /c 1q /n >nul
goto Do%ERRORLEVEL%

::[1]------------------------------------
:Do1
cd..
cd 3_Ref

::模型
for %%a in ("*.obj" "*.fbx" "*.abc" "*.c4d" "*.gltf" "*.blend" "*.max" "*.ma" "*.mb" "*.stl" "*.ztl" "*.mtl") do move "%%a" mod\"%%a"
::视频
for %%a in ("*.mp4" "*.mkv" "*.m4v" "*.webm" "*.rmvb" "*.flv" "*.f4v" "*.mov" "*.avi" "*.wmv" "*.gif") do move "%%a" video\"%%a"
::图片
for %%a in ("*.jpg" "*.png" "*.tga" "*.webp" "*.jpg" "*.exr" "*.hdr" "*.tif") do move "%%a" image\"%%a"

goto Do16


::[2]------------------------------------
:Do2
goto mod


::【017】部署工程----------------------------------------------------------------------------
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

::自己
set 源程序=%~n0

::上级文件夹名字
for /f "delims=" %%i in ("%cd%") do set folder=%%~ni
echo %folder%

::快捷方式
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\%folder%.lnk""):b.TargetPath=""%~dp0%源程序%"":b.WorkingDirectory=""%~dp0"":b.Save:close")

goto mod

::【H18】帮助----------------------------------------------------------------------------
:Do18
cd Seed
start cmd /c Title.bat
goto mod