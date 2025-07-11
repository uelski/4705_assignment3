IMAGE_NAME := fastapi-sentiment-app
PORT := 8000

build:
	@echo "Building Docker image: $(IMAGE_NAME)"
	docker build -t $(IMAGE_NAME) .

run:
	@echo "Running Docker container: $(IMAGE_NAME) on port $(PORT)"
	docker run -p $(PORT):8000 $(IMAGE_NAME)

clean:
	@echo "Removing Docker image: $(IMAGE_NAME)"
	docker rmi $(IMAGE_NAME)
