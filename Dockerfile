FROM alexzhxin/teamsync
EXPOSE 3306
EXPOSE 80
EXPOSE 8000
ADD .docker/run.sh /usr/local/bin/run
COPY . /code
CMD ["/bin/sh", "-e", "/usr/local/bin/run"]
