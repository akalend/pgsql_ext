FROM ubuntu
RUN apt update && apt -y --no-install-recommends install  build-essential libreadline-dev libz-dev  git  apt-utils apt-transport-https ca-certificates flex bison && update-ca-certificates 
WORKDIR /tmp
RUN git clone -b REL_14_STABLE  https://github.com/postgres/postgres.git
WORKDIR /tmp/postgres
RUN ./configure && make && make install
RUN mkdir /usr/local/pgsql/data /src
COPY ./src/testfunction /src
ENV PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/pgsql/bin
WORKDIR /src
RUN make && make install
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh
RUN groupadd --gid 2000 postgres && useradd --uid 2000 --gid postgres  --shell /bin/bash --create-home postgres 
ARG UID=2000
ARG GID=2000
ENV UID=${UID}
ENV GID=${GID}
RUN chown postgres /usr/local/pgsql/data /home/postgres  
USER 2000
RUN /usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data
COPY pg_hba.conf /usr/local/pgsql/data
COPY postgresql.conf /usr/local/pgsql/data
# USER root
EXPOSE 5432/tcp
ENTRYPOINT ["/sbin/entrypoint.sh"]