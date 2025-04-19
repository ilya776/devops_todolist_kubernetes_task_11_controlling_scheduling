#!/bin/bash

# MySQL
kubectl apply -f .infrastructure/mysql/ns.yml
kubectl apply -f .infrastructure/mysql/secret.yaml
kubectl apply -f .infrastructure/mysql/configMap.yaml
kubectl apply -f .infrastructure/mysql/service.yaml
kubectl apply -f .infrastructure/mysql/statefulSet.yaml

kubectl apply -f .infrastructure/app/ns.yaml
kubectl apply -f .infrastructure/app/secret.yaml
kubectl apply -f .infrastructure/app/configMap.yaml
kubectl apply -f .infrastructure/app/deployment.yaml
kubectl apply -f .infrastructure/app/service.yaml

# Ingress Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

# Ingress
kubectl apply -f .infrastructure/ingress/ingress.yaml
