@echo off
chcp 65001

:: Output folder relative to current folder %~dp0
set output=%~dp0
set executable=%~dp0\realesrgan-ncnn-vulkan.exe

:: loop through drag&drop files
if [%1]==[] goto :eof
set n=0
:loop
echo %1
call "%executable%" -i %1 -o "%output%\%~n1.png" -x -n realesr-general-wdn-x4v3
shift
set /a n+=1
if not [%1]==[] goto loop

::General, dn=0/1= no/denoise 
::call "%executable%" -i %1 -o "%output%\%~n1%.png" -n "realesr-general-wdn-x4v3" -x
::call "%executable%" -i %1 -o "%output%\%~n1%.png" -n "realesr-general-x4v3" -dn 1 -x