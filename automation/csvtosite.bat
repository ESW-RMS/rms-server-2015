echo "Upload CSV files to website"
ping yoursite.com
echo "Your site has been pinged"
"C:/Program Files/CoreFTP/corecmd.exe" -O -site ftpaccount@yoursite.com -u "C:\path\to\datafiles\*.csv" -p /path/to/uploads/YYYY/MM/
pause