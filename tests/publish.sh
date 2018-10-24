VERSION="$1"

docker login -p $DOCKER_PASSWORD -u $DOCKER_USERNAME

# Normal image
docker tag jorgeer/meteor jorgeer/meteor:latest
docker tag jorgeer/meteor jorgeer/meteor:$VERSION

docker push jorgeer/meteor:latest
docker push jorgeer/meteor:$VERSION

# root image
docker tag jorgeer/meteor:root jorgeer/meteor:$VERSION-root

docker push jorgeer/meteor:root
docker push jorgeer/meteor:$VERSION-root
