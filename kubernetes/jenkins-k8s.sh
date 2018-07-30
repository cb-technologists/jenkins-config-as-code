#!/usr/bin/env bash
kubectl delete -f jenkins.yml
kubectl delete pvc jenkins-home-jenkins-0
kubectl delete -f k8s-config.yml
kubectl delete -f service-account.yml

kubectl apply -f service-account.yml
kubectl apply -f k8s-config.yml
kubectl apply -f jenkins.yml