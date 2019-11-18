FROM registry.cn-hangzhou.aliyuncs.com/shenmiu/8-jre-alpine-sw-agent:latest

COPY ./target/hello-world.jar /app/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
     && echo "Asia/Shanghai" > /etc/timezone

ENTRYPOINT java -javaagent:/app/agent/skywalking-agent.jar \
-Dskywalking.collector.backend_service=${SW_URL} \
-Dskywalking.agent.service_name=${SW_SVC_NAME} -jar /app/hello-world.jar

EXPOSE 8081