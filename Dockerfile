FROM sonarqube:7.7-community

#https://github.com/SonarQubeCommunity/sonar-l10n-zh.git
ADD sonar-l10n-zh-plugin-1.27.jar /opt/sonarqube/extensions/plugins/
