# Replicate error

## Steps

Docker build:
`docker build -t sonarappworking .`

Run sonarqube:
`docker run sonarappworking bash -ce "mvn -f /pom.xml sonar:sonar -Dsonar.host.url=https://somesonarserver.com -Dsonar.login={API_KEY}"`
