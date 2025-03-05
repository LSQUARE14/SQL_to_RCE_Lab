FROM mysql:5.6
COPY dump.sql /docker-entrypoint-initdb.d/dump.sql

RUN echo "[mysqld]" > /etc/mysql/conf.d/custom.cnf && \
    echo "secure_file_priv=\"\"" >> /etc/mysql/conf.d/custom.cnf