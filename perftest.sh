host="fabmedical-603595.documents.azure.com"
username="fabmedical-603595"
password="eU6ddGYicN6HNd9nuV71B8K4NEODLQnsoRbfse0l9ggxtjjzHl9AM8h04Jo8mr3AbnGR3AnUW6QzhCfFbqGhPQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done