chcp 65001
@echo off
set realear=D:\Real-ESRGAN v0.2.5.0
set realesr_exe=realesrgan-ncnn-vulkan.exe
set current=%~dp0
::@echo on

::if not exist "%realear%/output" mkdir "%realear%/output"

for /f "delims=" %%D in ('dir /a:d /b') do (
	for %%a in ("%current%%%D\*.jpg") do (
		"%realear%/%realesr_exe%" -i "%%a" -o "%realear%/output/temp/%%~na.png" -x -n realesr-general-wdn-x4v3
	)
	for %%a in ("%current%%%D\*.png") do (
		"%realear%/%realesr_exe%" -i "%%a" -o "%realear%/output/temp/%%~na.png" -x -n realesr-general-wdn-x4v3
	)

	cd %realear%/output
	if exist "%%D" del "%%D"
	if exist "temp" ren "temp" "%%D"
	cd %current%
)

pause