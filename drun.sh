#!
source ./project.properties

$docker run -it --rm --name ${project_name} $docker_image $@
