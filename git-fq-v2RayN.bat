CHCP 65001
@echo off
:again
cls
echo.
echo.
echo ######################输入编号######################
echo 1.开启git http代理
echo 2.开启git PAC代理
echo 3.关闭git代理
set /p num=
if "%num%"=="1" (
git config --global https.proxy https://127.0.0.1:10809
git config --global http.proxy http://127.0.0.1:10809
echo 代理已开启
)
if "%num%"=="2" (
git config --global http.proxy socks5://127.0.0.1:10810
git config --global https.proxy socks5://127.0.0.1:10810
echo 代理已开启
)
if "%num%"=="3" (
git config --global --unset http.proxy
git config --global --unset https.proxy
echo 代理已关闭
)
git config --global --get http.proxy
git config --global --get https.proxy
pause