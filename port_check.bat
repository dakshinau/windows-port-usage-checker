echo off

for /f "tokens=*" %%I in ('netstat -aon ^| findstr %1')  do for %%A in (%%~I) do set last=%%A
for /f "delims=" %%I in ('tasklist ^| findstr %last%') do set _process=%%I

echo %_process%