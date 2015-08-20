import subprocess, time, signal, os

p = subprocess.Popen("elkrun.bat",cwd=r"C:\path\to\automationfiles",stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
timeout = time.time() + 5*60
for line in p.stdout:
    if "reason: zen-disco-receive" in line:
        print "Logstash started"
        break
    if time.time() > timeout:
        print "Logstash presumed to have started"
        break
time.sleep(180)
print "180 seconds have passed."
for i in range(0,3):
    print i
    if p.terminate():
        print "Termination successful."
        break
    else:
        print "Termination unsuccessful, retrying in 15s."
        time.sleep(15)
p.terminate()
print "Termination unsuccessul, task will be killed."
os.system('taskkill /fi "WindowTitle eq Elasticsearch 1.6.0"')
time.sleep(15)
os.system('taskkill /fi "WindowTitle eq C:\Python27\python.exe"')
