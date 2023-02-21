FROM jenkins/jenkins:lts
USER root

ENV DD_TRACE_AGENT_URL=http://localhost:8126

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy vim && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh

RUN curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose 

RUN chmod +x /usr/local/bin/docker-compose

RUN DD_API_KEY=652d3fa9e7fadf86d7ff04a891e7ca32 DD_SITE="datadoghq.eu" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script_agent7.sh)"

COPY datadog.yaml etc/datadog-agent/
RUN mkdir /tests
ADD tests/ /tests
RUN mkdir /var/log/jenkins

VOLUME /var/run/docker.sock:/var/run/docker.sock
RUN  usermod -a -G docker jenkins
# USER jenkins


