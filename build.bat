rmdir /S/Q pack
xcopy src pack /E/H/C/I
xcopy assets pack\assets /E/H/C/I
copy assets\package.json pack
copy assets\install.bat pack
call pack\install.bat
CD /D "%~dp0"
npx electron-builder --project pack
