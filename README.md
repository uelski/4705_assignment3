# IMDB Sentiment Analysis API
This repo contains the code to load a movie review sentiment analysis classification model and endpoints defined below.

## Endpoints
The API has 4 endpoints:

"/health":<br>
- method: GET
- description:<br>
Health check endpoint to verify if the API is running and if the model has been loaded successfully.
- response:<br>
"status": healthy or unhealthy based on if model is None<br>
"message": detail on response

"/predict":<br>
- method: POST
- description:<br>
Predict endpoint to predict the sentiment of the provided review text. Returns a JSON object with the predicted sentiment, "positive" or "negative".
- request body:<br>
"text": The text of the review to get the sentiment of.
- response:<br>
"sentiment": string of the sentiment output from the model: "positive" or "negative".

"/predict_proba":<br>
- method: POST
- description:<br>
Predict probability endpoint to predict the probability of the sentiment of the provided review text. Returns a JSON object with the predicted probability of the sentiment, and the predicted sentiment, "positive" or "negative".
- request body:<br>
"text": The text of the review to get the sentiment of.
- response:<br>
"sentiment": string of the sentiment output from the model: "positive" or "negative".<br>
"probability": The probability returned by the model for the predicted sentiment.

"/example":<br>
- method: GET
- description:<br>
Training example endpoint to return a training example from the dataset Returns a JSON object with the text of a random review from the IMDB csv file.
- response:
"review": The random review selected from the csv file.

## Prerequisites
To get this app up and running Docker and python must be installed on your machine. Postman or 'curl' commands can be used to test the endpoints.

## How To Run
- 'git clone' this repo in project directory of choice.
- 'cd' into this cloned repo.
- Run 'make build' to build the Docker image.
- Run 'make run' to run the Docker container.
- The endpoints should now be accessible at http://127.0.0.1:8000 on your machine.
- Use Postman or curl commands to access and test the API endpoints.
- Endpoint documentation can be accessed at http://127.0.0.1:8000/docs.
- When finished press Ctrl+C to stop the application from running.
- Run 'make clean' to remove the Docker image.

## Documentation link:
http://127.0.0.1:8000/docs