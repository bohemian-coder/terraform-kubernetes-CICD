#!/bin/sh
kubectl apply -f namespace.yaml
kubectl apply -f secret.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

#aws eks update-kubeconfig --region us-east-1 --name tkcicd-eks-01