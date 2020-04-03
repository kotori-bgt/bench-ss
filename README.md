# Pull from Docker Hub

docker run --rm mylolis/bench-ss sh start aes-256-gcm

# Docker build

git clone https://github.com/kotori-bgt/bench-ss

cd bench-ss

docker build -t bench-ss

docker run --rm bench-ss sh start aes-256-gcm
