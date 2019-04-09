FROM sonarqube:lts-alpine

#https://github.com/SonarQubeCommunity/sonar-l10n-zh.git
ADD sonar-l10n-zh-plugin-1.19.jar /opt/sonarqube/extensions/plugins/
