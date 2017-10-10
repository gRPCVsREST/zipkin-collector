FROM java:8
WORKDIR /
RUN wget -O collector.jar 'https://search.maven.org/remote_content?g=com.google.cloud.trace.adapters.zipkin&a=collector&v=LATEST'

ADD docker/run.sh run.sh
ADD build/libs/rest-content-service.jar rest-content-service.jar
EXPOSE 8080
CMD bash -c run.sh