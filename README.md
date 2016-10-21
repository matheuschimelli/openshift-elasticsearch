#openshift-elasticsearch
Runs ElasticSearch on Openshift

- 1. Create a new diy app on openshift web console or on rhc
- 2. ```cd $OPENSHIFT_DATA_DIR```
- 3. ```wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.1/elasticsearch-2.4.1.tar.gz``` 

note: Download the lasted version . This may not be the latest version

- 4. ``` tar -xf elasticsearch-version-number && mv elasticsearch-version-number/ elasticsearch```
- 5. Open ```config/elasticsearch.yml```


