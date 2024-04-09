docker pull moekharouf/web-app

docker stop practical_chebyshev
docker rm practical_chebyshev

docker run -d --name practical_chebyshev -p 8080:8080 moekharouf/web-app:latest
