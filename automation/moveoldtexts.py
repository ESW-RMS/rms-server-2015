import os, time, sys
srcpath = r"C:/path/to/gammu-1.33.0/inbox/"
dstpath = r"C:/path/to/gammu-1.33.0/old/"
now = time.time()
print now
for f in os.listdir(srcpath):
    print f
    fp = os.path.join(srcpath,f)
    print fp
    if os.stat(fp).st_mtime < now - 7*86400:
        os.rename(fp,os.path.join(dstpath,f))

# code modified from:
# http://stackoverflow.com/questions/12485666/deleting-all-files-in-a-folder-older-than-x-days-python
