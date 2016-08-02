Repository Information
======================
Builds a [Docker] container running [Elasticsearch] ready for use. Provisioning provided via [Ansible].

How-To
------
Build
```
docker build -t ansible-elasticsearch .
```

Consume

`Default`
```
docker run -d -p 9200:9200 mrlesmithjr/elasticsearch
```
`Define volume for persistent storage`
```
docker run -d -v $PWD/.data:/usr/share/elasticsearch/data -p 9200:9200 mrlesmithjr/elasticsearch
```

Defining startup values

`Define node name`
```
docker run -d -p 9200:9200 mrlesmithjr/elasticsearch -Des.node.name="node0"
```
`Define cluster name`
```
docker run -d -p 9200:9200 mrlesmithjr/elasticsearch -Des.cluster.name="docker"
```

Installing Elasticsearch plugins

`royrusso/elasticsearch-HQ`
```
docker exec containername plugin install royrusso/elasticsearch-HQ
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
