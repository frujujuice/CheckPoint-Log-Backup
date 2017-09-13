@echo off

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="C:\CheckPoint Firewall Logs\WinSCP.log" /ini=nul ^
  /command ^
    "open scp://USERNAME:PASSWORD@CPMGTSERVER IP ADDRESS/ -hostkey=""ssh-rsa 2048 xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx""" ^
    "cd /var/log/opt/CPsuite-R77/fw1/log" ^
    "lcd ""C:\CheckPoint Firewall Logs""" ^
    "get fw.log" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%
