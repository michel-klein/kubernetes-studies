echo "Criando as imagens"

docker build -t michel-klein/projeto-backend:1.0 backend/.
docker build -t michel-klein/projeto-database:1.0 database/.

echo "Realizando o push das imagens"

docker push michel-klein/projeto-backend:1.0
docker push michel-klein/projeto-database:1.0

echo "Criando serviços"

kubectl apply -f ./services.yml

echo "Criando os deployments"

kubectl apply -f ./deployment.yml
