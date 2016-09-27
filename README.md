Repository Information
======================
Builds a [Docker] container running [Elasticsearch] ready for use.  
Provisioning provided via [Ansible]. Also includes plugins installed.

Uses the upstream elasticsearch repository for the base image but installs
plugins defined in `config/ansible/es_plugin_vars.yml`

```
---
es_plugins:
  - 'license'
  - 'mobz/elasticsearch-head'
  - 'royrusso/elasticsearch-HQ'
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Elasticsearch]: <https://elastic.co>
[Docker]: <https://www.docker.com>
[Ansible]: <https://www.ansible.com/>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
