docker build -t jorgeer/meteor ./image
docker build -t jorgeer/meteor:root ./root-image

semantic-release --debug
