import subprocess, time, signal, os

print "File started"
p = subprocess.Popen("gammurun.bat",cwd=r"C:\path\to\automationfiles",stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
time.sleep(120)
print "120 seconds have passed."
for i in range(0,3):
    print i
    if p.terminate():
        print "Termination successful."
        break
    else:
        print "Termination unsuccessful, retrying in 15s."
        time.sleep(15)
p.terminate()
print "Termination unsuccessful, task will be killed."
os.system('taskkill /fi "WindowTitle eq Gammu"')