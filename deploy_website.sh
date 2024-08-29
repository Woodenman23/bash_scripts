#!/usr/bin/env bash

version=$1

docker build -t flask-website /home/joe/projects/website
echo docker image ready!
aws lightsail push-container-image --service-name website-service --label website-container --image flask-website
echo Image in container!
cat << EOF > /home/joe/projects/website/containers.json
{
    "flask": {
        "image": ":website-service.website-container.$version",
        "ports": {
            "5000": "HTTP"
        }
    }
}
EOF
echo containers.json updated!
aws lightsail create-container-service-deployment --service-name website-service --containers file://containers.json --public-endpoint file://public-endpoint.json
