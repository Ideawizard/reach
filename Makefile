build:
	docker build --tag gateway --no-cache gateway-server/
deploy:
	docker push gateway gateway-server
	helm upgrade --set image.tag=0.1.0 --install reach ./reach/
