#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0);pwd)
PARENT_DIR=$(cd $(dirname $0);cd ..;pwd)


AP_CLASSPATH="${PARENT_DIR}/*:${PARENT_DIR}/lib/*"
MAIN_CLASS="org.springframework.batch.core.launch.support.CommandLineJobRunner"

java -cp "${AP_CLASSPATH}" ${MAIN_CLASS} META-INF/jobs/job01.xml job01
