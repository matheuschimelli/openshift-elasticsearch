#!/bin/bash
# ElasticSearch install script
ELASTICSEARCH_VERSION='2.4.1'
ELASTICSEARCH_URL="https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.1/elasticsearch-2.4.1.tar.gz"

download() {
    
    wget $ELASTICSEARCH_URL
}

start(){
    cd $OPENSHIFT_DATA_DIR
    download
    wget $ELASTICSEARCH_URL
    tar -xf 'elasticsearch-'$ELASTICSEARCH_VERSION'.tar.gz'
    mv 'elasticsearch-'$ELASTICSEARCH_VERSION 'elasticsearch1'
    cd 'elasticsearch/config'
    rm 'elasticsearch.yml'
    wget 'https://raw.githubusercontent.com/matheuschimelli/openshift-elasticsearch/master/elasticsearch.yml'
    
    
    
}
start
