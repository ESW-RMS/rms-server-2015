echo "Run the receiver"
cd %HOMEPATH%/path/to/automationfiles
echo "1 - Run gammu"
start /wait rungammu.py
echo "2 - Run ELK stack"
start /wait "C:\Python27\python.exe" runel.py
echo "3 - Run CoreFTP upload"
echo %time%
call csvtosite.bat
rem "Take this pause out when using it as an actual script."
pause