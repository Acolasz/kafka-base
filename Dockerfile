FROM acolasz/debian-base-buster:0.0.1

ARG scala_version
ARG kafka_version

ENV SCALA_VERSION=${scala_version}
ENV KAFKA_VERSION=${kafka_version}
ENV KAFKA_ALL_VERSION=${scala_version}-${kafka_version}

# Install zookeeper
RUN cd /opt/ &&\
	wget https://www.apache.org/dist/kafka/${kafka_version}/kafka_${KAFKA_ALL_VERSION}.tgz &&\
	tar -xzf kafka_${KAFKA_ALL_VERSION}.tgz &&\
	rm kafka_${KAFKA_ALL_VERSION}.tgz &&\
	ln -s /opt/kafka_${KAFKA_ALL_VERSION}/ /opt/kafka
	
WORKDIR /opt/kafka/

ENV KAFKA_HOME=/opt/kafka

COPY properties/* ./config/