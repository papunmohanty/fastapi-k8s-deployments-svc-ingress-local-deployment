# Steps to build and run the application using k8s

## Create ngnix as ingress class
```sh
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```

# Make commands for easiness

## Apply the k8s manifests using
```sh
make dbuild
```

## Apply tag to the docker image
```sh
make dtag
```

## Login to docker hub
```sh
make dlogin
```

## Push the image to the docker hub
```sh
make dpush
```

## Create all resources for the application
```sh
make k8sdepall
```

## Delete all resources for the application
```sh
make k8sdelall
```

## Port forward for the ingress for local
```sh
make pf
```