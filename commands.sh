# ------------------------------------------------------------------------------

docker build --no-cache -f TechChallenge.Aplicacao/Dockerfile -t andrehs/fiap.aplicacao .
docker push andrehs/fiap.aplicacao

# ------------------------------------------------------------------------------

docker build --no-cache -f TechChallenge.Worker/Dockerfile -t andrehs/fiap.worker .
docker push andrehs/fiap.worker

# ------------------------------------------------------------------------------