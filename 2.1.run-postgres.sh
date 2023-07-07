source ./project.properties
$docker run -d --rm --name ${project_name}-postgres \
 -p 5432:5432 \
 -e POSTGRES_USER=admin \
 -e POSTGRES_PASSWORD=admin \
 docker.io/library/postgres:latest

#sudo apt install postgresql-client-common
#sudo apt install postgresql-client
#PGPASSWORD=admin psql -h localhost -U admin -c "select 1 as x;"
