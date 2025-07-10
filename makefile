APP_NAME := student-api
VERSION := 1.0.0
IMAGE := $(APP_NAME):v$(VERSION)

build:
	docker build -t $(IMAGE) .

run:
	docker run -it --rm -p 5000:5000 --env-file .env $(IMAGE)

tag-latest:
	docker tag $(IMAGE) $(APP_NAME):latest

push:
	docker tag $(IMAGE) darshanvarude/$(APP_NAME):v$(VERSION)
	docker push darshanvarude/$(APP_NAME):v$(VERSION)

