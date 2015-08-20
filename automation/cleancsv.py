import fileinput, os
seen = set()
datapath = '../datafiles/'
for filename in os.listdir(datapath):
    print filename
    for line in fileinput.FileInput(datapath+filename,inplace=1):
        if line in seen: continue

        seen.add(line)
        print line,

# code modified from: http://stackoverflow.com/questions/15741564/removing-duplicate-rows-from-a-csv-file-using-a-python-script
