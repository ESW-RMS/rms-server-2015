echo "run ELK automatically"
cd %HOMEPATH%
del .sincedb*
REM "You can take out the del .sincedb* once things are set up"
cd path/to/elkstack
start cmd /k "call elasticsearch-1.6.0/bin/elasticsearch.bat"
ping localhost:9200
echo "pinging Elasticsearch"
cd logstash-1.5.2/bin
logstash agent -f smstocsv.conf