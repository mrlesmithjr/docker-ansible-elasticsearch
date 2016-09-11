FROM mrlesmithjr/ubuntu-ansible:14.04

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Define Elasticsearch version to install
ENV ELASTICSEARCH_MAJOR_VERSION="2.x" \
    ELASTICSEARCH_VER="2.4.0"

# Copy Ansible Related Files
COPY config/ansible/ /

# Run Ansible playbook
RUN ansible-playbook -i "localhost," -c local /playbook.yml \
  --extra-vars "elasticsearch_major_version=$ELASTICSEARCH_MAJOR_VERSION \
  elasticsearch_ver=$ELASTICSEARCH_VER" && \
  apt-get -y clean && \
  apt-get -y autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH /usr/share/elasticsearch/bin:$PATH

WORKDIR /usr/share/elasticsearch

# Copy Docker Entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

COPY config/elasticsearch /usr/share/elasticsearch/config

# Setup volume
VOLUME /usr/share/elasticsearch/data

# Expose port(s)
EXPOSE 9200 9300

# Container start-up
CMD ["elasticsearch"]
