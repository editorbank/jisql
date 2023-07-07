
source ./project.properties&&$docker network exists jisql && $docker network rm jisql

# Удаление контейнеров и образов сделанных проектом
$docker ps -q -a -f name=${project_name}-postgres | xargs -r $docker rm -f
$docker ps -q -a -f name=${project_name}-clickhouse | xargs -r $docker rm -f
$docker images -q -f reference=$docker_image | xargs -r $docker rmi -f
$docker images -q -f reference=docker.io/library/postgres:latest | xargs -r $docker rmi -f
$docker images -q -f reference=docker.io/clickhouse/clickhouse-server:latest | xargs -r $docker rmi -f

$docker network exists jisql && $docker network rm jisql

# Удаление игнорируемых Git-ом файлов кроме *.bak (как файлов так и директорий) И Удаление только пустых директорий
git ls-files --others --ignored --exclude-standard | grep -v .bak | xargs -r rm && find . -empty -type d -delete

