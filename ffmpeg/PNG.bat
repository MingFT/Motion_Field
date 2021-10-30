@echo off
mode con cols=130 lines=40
color 07
cd ×ª¸ñÊ½
md PNG
for %%a in ("*.psd" "*.gif" "*.jpg" "*.png" "*.tif" "*.tga" "*.hdr" "*.exr" "*.webp" "*.svg" "*.heic" "*.dpx") do "%~dp0magick.exe" "%%a" -background none -flatten "PNG\%%~na.png"