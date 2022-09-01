FROM ghost:4.32.0
RUN apt-get update -y && apt-get install -y default-mysql-client
COPY startup.sh /opt/copilot/scripts/startup.sh
ENTRYPOINT ["/opt/copilot/scripts/startup.sh","mysql", "--", "docker-entrypoint.sh"]
CMD ["node", "current/index.js"]
#EXPOSE 2368