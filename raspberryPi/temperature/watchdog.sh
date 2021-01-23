
MYWATCHDOG=$(ps auxu |grep google_sheets.py |grep -v grep)

if ! [ -n "$MYWATCHDOG" ] ; then
    python3 /home/pi/dev/temperature/google_sheets.py  > /dev/null 2>&1
    exit
fi

