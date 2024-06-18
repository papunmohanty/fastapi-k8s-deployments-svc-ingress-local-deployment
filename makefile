dbuild:
	docker build -t sample-fastapi-app .

dlogin:
	docker login

dpush:
	docker push papunmohanty/sample-fastapi-app

k8sdepall:
	kubectl apply -f deployments

k8sdelall:
	kubectl delete -f deployments

pf:
	kubectl port-forward svc/sample-fastapi-app-service --address=0.0.0.0 8000:8000