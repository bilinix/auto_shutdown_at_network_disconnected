@echo off

rem 保存时编码务必选ANSI
rem 有用就给个赞呗

set IP=192.168.1.1
set /a count=0
set /a max_times=60

:def_ping
cls
echo 在事件查看器中搜索1074查看关机历史记录
echo.
echo default ping mode.
timeout 3 /nobreak
ping -w 1000 -n 3 %IP% | find "TTL"
if %errorlevel%==0 goto def_ping else (
echo.
echo try_again mode.
goto try_again
)

:try_again
ping -w 1000 -n 2 %IP% | find "TTL"
if %errorlevel%==0 (
msg * /time:10 "网络连接已恢复"
set /a count=0
goto def_ping
) else set /a count+=1
if %count% equ 1 (
echo The first time network disconnect at %time:~0,8%
msg * /time:30 "网络连接超时"
)
echo count == %count%/%max_times%
if %count% equ %max_times% (goto shutdown) else goto try_again

:shutdown
echo.
echo Shutting down.
echo 你的电脑会在10秒内关机
echo 如需取消请按 win+r 输入 shutdown -a
msg * /time:10 "Windows will shutdown in 10 seconds."
shutdown -s -t 10 -c "设置的IP地址不可达" -d u:6:11
timeout 10 /nobreak
pause
echo 作者：夜微冰萌 https://www.bilibili.com/read/cv29637255/#reply232955413536 出处：bilibili
