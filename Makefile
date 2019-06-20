CONTAINER_NAME?=git-secrets
CONTAINER_PORT?=80

retest: clean test

open:
	xdg-open localhost:$(CONTAINER_PORT)

test:
	docker run --name $(CONTAINER_NAME) -v $$(pwd):/usr/share/nginx/html:ro -p $(CONTAINER_PORT):80 -d nginx

clean:
	docker kill $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)
