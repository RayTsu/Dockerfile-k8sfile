#!/bin/bash
env_flag=${APP_ENV}
jar_name=${APP_SERVICE}.jar
logs_path=/opt/risk/service/${APP_SERVICE}/logs
mkdir -p ${logs_path}
exec java -jar -Denv=$env_flag \
     -Xmx1024m -Xms1024m -XX:PermSize=128M -XX:MaxPermSize=256M \
     $jar_name >$logs_path/cat.out