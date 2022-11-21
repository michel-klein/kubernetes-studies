#!/bin/bash

echo "Criando as imagens"

kubectl apply -f .\mysql-deployment.yml --record
kubectl apply -f .\app-deployment.yml --record
