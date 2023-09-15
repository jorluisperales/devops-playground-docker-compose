#!/bin/sh
###################################################################
# Retrieve the runner registration token with this link:
# http://<docker-host-ip>:4000/root/${project}/settings/ci_cd
# Project url: https://github.com/jorluisperales/GitLab-Docker/
###################################################################

# Edit with your token and docker-host-ip
registration_token=XXXXXXXXXXXXXXX
url=http://<docker-host-ip>:4000

docker exec -it gitlab-runner1 \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url ${url} \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode gitlab-network
    
# Execute the script to register the runner in Gitlab