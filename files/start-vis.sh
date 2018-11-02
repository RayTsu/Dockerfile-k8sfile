#!/bin/bash
env_flag=${APP_ENV}
jar_name=${APP_SERVICE}.jar
logs_path=/home/apps/vis/logs/
mkdir -p ${logs_path}
exec java -jar -Dspring.profiles.active=$env_flag \
     $jar_name