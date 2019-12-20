#!/bin/bash

# Descargar instalador de ElasticSearch
echo "[TASK 1] Download ElasticSearch"

yum install -y wget
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.5.0-x86_64.rpm

# Instalación de ElasticSearch
echo "[TASK 2] Install ElasticSearch"

rpm -ivh elasticsearch-7.5.0-x86_64.rpm

# Activar Servicios de ElasticSearch
echo "[TASK 3] Enable Service ElasticSearch"

systemctl daemon-reload
systemctl enable elasticsearch
systemctl start elasticsearch
