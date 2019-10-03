docker-compose -p apigateway -f docker/web-ms.yml -f services/apigateway/docker-compose.yml down

docker-compose -p auth -f docker/web-ms.yml -f services/auth/docker-compose.yml down
docker-compose -p user -f docker/web-ms.yml -f services/user/docker-compose.yml down