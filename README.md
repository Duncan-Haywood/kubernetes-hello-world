Deploying a Flask App to Minikube
This code demonstrates how to build and deploy a simple Flask app to Minikube using Docker and Kubernetes.
Files
app.py - A simple Flask application that prints "Hello World!"
build.sh - Build script that does the following:
Builds a Docker image for the Flask app
Starts Minikube
Loads the Docker image into Minikube's local registry
Deploys the Kubernetes deployment and service manifests
deployment.yaml - Kubernetes deployment definition for the Flask app. Runs 1 replica of the container.
service.yaml - Kubernetes service to expose the Flask app on port 80. Uses NodePort for external access.
requirements.txt - List of Python dependencies for the Flask app.
How it works
The Flask app is packaged into a Docker image using the Dockerfile. This image is loaded into Minikube's local registry.
The Kubernetes deployment runs the Flask container and sets imagePullPolicy: Never since the image is local.
The service exposes the app on port 80 using a NodePort.
minikube service is used to conveniently get the URL to access the app.
Usage
To deploy the app:
run source build.sh