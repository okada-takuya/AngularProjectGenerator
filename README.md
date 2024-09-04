# Angular Project Generator

## Overview

Dockerfile for Angular cli container to generate a new Angular project.

## Requirement

- docker 27.1.1

## Usage

```sh
# on host
## Clone project
cd ${HOME}
mkdir projects
git clone git@github.com:okada-takuya/AngularProjectGenerator.git

## Set Angular cli version
cd AngularProjectGenerator
cp .env.sample .env
vim .env # Edit ANGULAR_VERSION to any version.

## Build image and Execute shell on container
docker compose up -d
docker exec -it angular_project_generator-angular-project-generator-1 /bin/bash

# on container
## Generate new Angular project
cd projects # The container's workspace is mounted on the host's Home.
ng new awesome-project
```

## Author

- Takuya Okada
    - [Nostr](https://nostr.com/npub1ml7nllp64d3fxx5vkz8s52jg3kn5wq7s35w7lyux3t3s7kk700ss548cua) 
    - [𝕏](https://x.com/oppapili)

## Licence

This project is licensed under the MIT License, see the LICENSE.md file for details.