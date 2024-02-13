# sonarqube-delphi-docker
Projeto docker composto por:
  - sonarqube
  - sonar-delphi-plugin 
  - sonar-scanner
  
Como baixar a última imagem
  - docker pull armandonetodev/sonarqubedelphi:latest
  
Como rodar o projeto pelo docker
  - docker volume create --name sonarqube_data
  - docker volume create --name sonarqube_logs
  - docker volume create --name sonarqube_extensions  
  
  - docker run -d --name sonarqube \
     -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true \
	 -p 9000:9000 \
     -v sonarqube_data:/opt/sonarqube/data \
     -v sonarqube_extensions:/opt/sonarqube/extensions \
     -v sonarqube_logs:/opt/sonarqube/logs \
     armandonetodev/sonarqubedelphi:latest
  
Como rodar o projeto pelo docker-compose
  - docker-compose up
  
Como realizar o scanner do projeto  
  sonar-scanner \
    -Dsonar.projectKey=${key-project-sonar} \
    -Dsonar.sources=/usr/src/app \
    -Dsonar.host.url=http://localhost:9000 \
    -Dsonar.token=${toke-project-sonar}

  Exemplo
    sonar-scanner \
	  -Dsonar.projectKey=calculator \
	  -Dsonar.sources=/usr/src/app \
      -Dsonar.host.url=http://localhost:9000 \
      -Dsonar.token=sqp_ebf54e3ea77df0f4bd48465e6392d61814b2a975