FROM elasticsearch:2.3.3
MAINTAINER zwh8800 <496781108@qq.com>

RUN wget https://github.com/medcl/elasticsearch-analysis-ik/archive/v1.9.3.zip && \
	unzip v1.9.3.zip && cd elasticsearch-analysis-ik-1.9.3 && apt-get update && \
	apt-get install -y maven && mvn package && \
	unzip target/releases/elasticsearch-analysis-ik-1.9.0.zip -d ../plugins/ik/

