
# Normal image
docker build -t hubroedu/meteor-runner ./runner
docker tag hubroedu/meteor-runner hubroedu/meteor-runner:latest
docker push hubroedu/meteor-runner:latest
