echo "Upload CSV files to website and update graphs"
ping yoursite.com
echo "Your site has been pinged"
"C:/Program Files/CoreFTP/corecmd.exe" -O -site ftpaccount@yoursite.com -u "C:\path\to\datafiles\*.csv" -p /path/to/uploads/YYYY/MM/
"C:/Program Files/CoreFTP/corecmd.exe" -O -site ftpaccount@yoursite.com -u "C:\path\to\datafiles\graphdata.html" -p /path/to/uploads/YYYY/MM/
