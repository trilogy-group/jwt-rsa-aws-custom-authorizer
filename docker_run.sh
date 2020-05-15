docker build -t lambda-authorizer:v1 -f Dockerfile .

docker run -v `pwd`:/home/node/app -it lambda-authorizer:v1
