# sonarqube-delphi-docker
Projeto docker composto por:
  - sonarqube
  - sonar-delphi-plugin 
  - sonar-scanner
  
Como rodar seu projeto
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