# Example with docker build and helm deploy

Current kubernetes cluster should be your local one.

To install kubernetes on MacOS: https://kubernetes.io/fr/docs/tasks/tools/install-minikube/

Docker builds and pushes to artifactory using defaut ~/docker/config.json authentication settings.

Helm installs the local chart to the your current kubernetes cluster.

Your local kubernetes cluster must include your talend-registry secret to pull image from artifactory.

To create it, create a token for your artifactory account and execute:
```
kubectl create secret docker-registry talend-registry \
  --docker-username=<MY_USERNAME> \
  --docker-password=<MY_TOKEN>
```

and just run:
```
skaffold dev
```
