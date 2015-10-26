#!/bin/bash

CONTEXT_PATH=${CATALINA_HOME}/webapps/psearch-indec
LOCAL_URL=http://localhost:8080/psearch-indec

java -Ddata=args -Durl=${LOCAL_URL}/acts/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/acts/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/acts.csv 

java -Ddata=args -Durl=${LOCAL_URL}/dept/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/dept/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/dept.csv 

java -Ddata=args -Durl=${LOCAL_URL}/gloc/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/gloc/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/gloc.csv 

java -Ddata=args -Durl=${LOCAL_URL}/legf/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/legf/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/legf.csv 

java -Ddata=args -Durl=${LOCAL_URL}/prod/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/prod/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/prod.csv 

java -Ddata=args -Durl=${LOCAL_URL}/prov/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/prov/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/prov.csv 


java -Ddata=args -Durl=${LOCAL_URL}/typl/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/typl/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/typl.csv 

java -Ddata=args -Durl=${LOCAL_URL}/typn/update -jar ${CONTEXT_PATH}/lib/post.jar "<delete><query>*:*</query></delete>" 
java -Dtype=text/csv -Durl=${LOCAL_URL}/typn/update -jar ${CONTEXT_PATH}/lib/post.jar ${CONTEXT_PATH}/datasource/typn.csv 





