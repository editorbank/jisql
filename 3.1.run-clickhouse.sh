source ./project.properties
$docker run -d --rm --name ${project_name}-clickhouse \
 -p 8123:8123 -p 9000:9000 -p 9009:9009 \
 -e CLICKHOUSE_DB=admin \
 -e CLICKHOUSE_USER=admin \
 -e CLICKHOUSE_PASSWORD=admin \
 -e CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT=1 \
 docker.io/clickhouse/clickhouse-server:latest
