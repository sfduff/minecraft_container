#!/bin/bash
# https://github.com/sfduff/docker_minecraft.git

# uses the current FOLDER name as the container, server and level name
# ref.
# gamemode= "survival", "creative", or "adventure"
# difficulty= "peaceful", "easy", "normal", or "hard"
# default-player-permission-level= "visitor", "member", "operator"

docker run -d -it --name ${PWD##*/} \
    -e EULA=TRUE \
    -e SERVER_NAME=${PWD##*/} \
    -e LEVEL_NAME=${PWD##*/} \
    -e GAMEMODE=creative \
    -e DIFFICULTY=peaceful \
    -e LEVEL_TYPE \
    -e ALLOW_CHEATS=true \
    -e MAX_PLAYERS=3 \
    -e ONLINE_MODE=true \
    -e WHITE_LIST=false \
    -e VIEW_DISTANCE=64 \
    -e TICK_DISTANCE=4 \
    -e PLAYER_IDLE_TIMEOUT=0 \
    -e MAX_THREADS=8 \
    -e LEVEL_SEED= \
    -e DEFAULT_PLAYER_PERMISSION_LEVEL=operator \
    -e TEXTUREPACK_REQUIRED=false \
    -p 19000:19132/udp \
    -v ${PWD}/data/worlds:/data/worlds \
    -v ${PWD}/data/server.properties:/data/server.properties \
    -v ${PWD}/data/whitelist.json:/data/whitelist.json \
    -v ${PWD}/data/permissions.json:/data/permissions.json \
    itzg/minecraft-bedrock-server
