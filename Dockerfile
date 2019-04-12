FROM sonarqube:7.7-community

#https://github.com/SonarQubeCommunity/sonar-l10n-zh.git
RUN rm -rf /opt/sonarqube/extensions/plugins
ADD software/plugins.tgz /opt/sonarqube/extensions/
#中文语言包(其实上面的plugins.tgz包里有这个插件，但是为了确保以后不忘记加入这个中文语言插件包)
ADD software/sonar-l10n-zh-plugin-1.27.jar /opt/sonarqube/extensions/plugins/
