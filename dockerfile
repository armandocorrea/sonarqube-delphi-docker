FROM sonarqube

USER root

RUN sysctl -w vm.max_map_count=262144
RUN mkdir /home/.sonar
RUN chmod 777 /home/.sonar

WORKDIR /opt

COPY ./sonar-delphi-plugin ./sonarqube/extensions/plugins
COPY ./sonar-scanner ./sonar-scanner

ENV SONAR_USER_HOME=/home/.sonar \
    SONAR_SCANNER_HOME=/opt/sonar-scanner \
    SONAR_USER_HOME=/home/.sonar \
    SONARQUBE_HOME=/opt/sonarqube \
    PATH="$PATH:/opt/sonar-scanner/bin"

WORKDIR $SONARQUBE_HOME
USER sonarqube
EXPOSE 9000

ENTRYPOINT [ "/opt/sonarqube/docker/entrypoint.sh" ] 