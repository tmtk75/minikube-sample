.DEFAULT_GOAL := help

kc-delete:
	kubectl delete service nginx-nodeport
	kubectl delete deployment nginx

mk-url:
	minikube service nginx-nodeport --url

mk-open:
	minikube service nginx-nodeport

kc-run:
	kubectl run nginx --image=nginx:1.11 --port=80

kc-export:
	kubectl expose deployment nginx --name=nginx-nodeport \
		--port=80 --target-port=80 --type="NodePort"

mk-stop:
	minikube stop

mk-start:
	minikube start

help:
	echo
