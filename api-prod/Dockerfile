FROM xnlogic/jruby

COPY api.war /app/api.war

ENV XN_CLIENT         lightmesh
ENV APPS_PATH         /opt/xn_apps
ENV XN_BKP_PATH       /opt/xn_bkp
ENV M2_REPO           vendor/jars
ENV PACER_MANUAL_JARS true

ENV JAVA_OPTS "-Xmx4g -XX:MaxPermSize=256m -Ddatomic.objectCacheMax=256m"

EXPOSE 8080

CMD java -jar /app/api.war
