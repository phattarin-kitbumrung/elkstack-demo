docker run --net="host" --name logstash --rm \
--env="ELASTIC_HOST=localhost:9200" \
--env="XPACK_SECURITY_ENABLED=false" \
--env="XPACK_REPORTING_ENABLED=false" \
--env="XPACK_MONITORING_ENABLED=false" \
--volume="${PWD}/data:/usr/share/logstash/data" \
--volume="${PWD}/config/logstash.yml:/usr/share/logstash/config/logstash.yml" \
--volume="${PWD}/config/pipelines.yml:/usr/share/logstash/config/pipelines.yml" \
--volume="${PWD}/pipeline:/usr/share/logstash/pipeline" \
--volume="${PWD}/input:/usr/share/logstash/input" \
--volume="${PWD}/output:/usr/share/logstash/output" \
--env="config.reload.automatic=true" \
--publish="8080:8080" \
--publish="8081:8081" \
docker.elastic.co/logstash/logstash:8.6.2
        