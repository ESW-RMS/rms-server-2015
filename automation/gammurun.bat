echo Running Gammu-SMSD
cd %HOMEPATH%/path/to/gammu-1.33.0/bin
gammu --identify
rem "If there are multiple ports to which the modem can attach"
rem "you will need to create a separate smsd config file for each."
rem "In the gammu config file, just create a new section [gammu1] etc."
rem "In our system, there are two potential ports, COM24 and COM27."
start "Gammu" cmd /wait /c "gammu-smsd --config smsdrc24"
start "Gammu" cmd /wait /c "gammu-smsd --config smsdrc27"