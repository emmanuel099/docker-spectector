IMAGE := spectector

all: build

build: Dockerfile
	$(info Building $(IMAGE):latest)
	@docker build --network=host -t $(IMAGE):latest .

clean:
	@docker rmi $(IMAGE):latest

.PHONY: build clean
