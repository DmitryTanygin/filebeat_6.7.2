FROM docker.elastic.co/beats/filebeat:6.7.2
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN mkdir /usr/share/filebeat/dockerlogs
USER filebeat
