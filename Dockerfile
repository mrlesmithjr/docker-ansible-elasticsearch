FROM mrlesmithjr/elasticsearch:alpine-2.4.0

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Copy Ansible Related Files
COPY config/ansible/ /

# Run Ansible Playbook
RUN ansible-playbook -i "localhost," -c local /es_plugins.yml
