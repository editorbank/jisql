#!
source ./project.properties

[ ! -d drv -o ! -d jisql-2.0.11 ] && ./0.init.sh

$docker images -q -f reference=$docker_image | xargs -r $docker rmi -f
$docker build . --tag $docker_image