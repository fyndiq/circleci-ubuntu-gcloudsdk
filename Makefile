REPO=fyndiq
NAME=circleci-ubuntu-gcloudsdk
TAG=ubuntu-stable-20.04-gcloudsdk321.0.0-v1

build:
	docker build -t $(REPO)/$(NAME):$(TAG) .
	docker tag $(REPO)/$(NAME):$(TAG) $(REPO)/$(NAME):latest

run:
	docker run -it --rm $(REPO)/$(NAME):$(TAG)

push:
	docker push $(REPO)/$(NAME):$(TAG)
	docker push $(REPO)/$(NAME):latest
