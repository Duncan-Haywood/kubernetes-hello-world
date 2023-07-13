echo "Building docker image"
docker build -t hello:latest .

# echo "Tagging docker image"
# docker tag ml-api:latest duncanhaywood1/ml-api:latest
# echo "login docker image"
# docker login
# docker push duncanhaywood1/ml-api:latest

echo "Starting minikube"
minikube start
echo   "Setting docker env"
minikube image load hello:latest
echo "Deploying app"
kubectl apply -f deployment.yaml
echo "Exposing app"
kubectl apply -f service.yaml
echo "Getting pods"
kubectl get deployments
echo "Getting services"
kubectl get services
echo "Getting url"
minikube service hello-service --url
