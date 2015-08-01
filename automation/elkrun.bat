echo "run ELK automatically"
cd %HOMEPATH%
del .sincedb*
rem "You can take out the del .sincedb* once things are set up"
cd folder/above/elkstack
start /min cmd /c "call elasticsearch-1.6.0/bin/elasticsearch.bat"
ping localhost:9200
echo "pinging Elasticsearch"
cd logstash-1.5.2/bin
logstash agent -f smstocsv.conf
