# devops_environment

## Pierwsze uruchomienie
- Uruchomić docker-compose
```bash
docker-compose up -d
```
- Wystawić docker.sock'a
```bash
sudo chmod 777 /var/run/docker.sock
```

## Konfiguracja wstępna
SonarQube:
- Stworzyć webhooka w sonarze na adres `http://jenkins-env:8080/sonarqube-webhook`
- Stworzyć nowy token o nazwie `SONARQUBE_TOKEN`

Jenkins:
- Wkleić token z SonarQube do Jenkinsa jako secret text o nazwie `SONARQUBE_TOKEN`
- Wkleić hasło do Docker Hub'a jako secret text o nazwie `DOCKER_HUB_PASSWORD`
- Zainstalować plugin SonarQube Scanner for Jenkins
- W sekcji Skonfiguruj system dodaj SonarQube servers:
    - Name: `SonarQube`
    - Server URL: `http://sonarqube-env:9000`
    - Server authentication token: `SONARQUBE_TOKEN `
- W sekcji (Globalne narzędzia do konfiguracji) dodaj SonarQube Scanner
    - Name: `SonarQube`
