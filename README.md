# Steps to build and run the application using k8s

## Create ngnix as ingress class
```sh
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```

## Apply the k8s manifests using make file
```sh
make dbuild
```

## Docker login, to push image to docker repo
```sh
make dpush
```

## Push the image to the docker hub
```sh
make dpush
```

## Port forward for the ingress for local
```sh
kubectl port-forward svc/sample-fastapi-app-service --address=0.0.0.0 8000:8000
```