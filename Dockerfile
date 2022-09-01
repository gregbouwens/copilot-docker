FROM ghost:5.8.3
RUN apt-get update -y && apt-get install -y default-mysql-client
ENTRYPOINT ["mysql", "--", "docker-entrypoint.sh"]
CMD ["node", "current/index.js"]
#EXPOSE 2368