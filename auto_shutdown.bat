@echo off

rem ����ʱ�������ѡANSI
rem ���þ͸�������

set IP=192.168.1.1
set /a count=0
set /a max_times=60

:def_ping
cls
echo ���¼��鿴��������1074�鿴�ػ���ʷ��¼
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
msg * /time:10 "���������ѻָ�"
set /a count=0
goto def_ping
) else set /a count+=1
if %count% equ 1 (
echo The first time network disconnect at %time:~0,8%
msg * /time:30 "�������ӳ�ʱ"
)
echo count == %count%/%max_times%
if %count% equ %max_times% (goto shutdown) else goto try_again

:shutdown
echo.
echo Shutting down.
echo ��ĵ��Ի���10���ڹػ�
echo ����ȡ���밴 win+r ���� shutdown -a
msg * /time:10 "Windows will shutdown in 10 seconds."
shutdown -s -t 10 -c "���õ�IP��ַ���ɴ�" -d u:6:11
timeout 10 /nobreak
pause
echo ���ߣ�ҹ΢���� https://www.bilibili.com/read/cv29637255/ ������bilibili
