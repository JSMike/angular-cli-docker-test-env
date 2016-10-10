## Testing Angular CLI in Docker
This repo is for testing Angular-CLI in a docker environment, specifically with interactions between the docker environment and the host system.

### Requirements
 * Docker-Machine 0.8.0
 * Docker 1.12.0
 * Make
 * docker-machine-nfs (OSX only)

### Steps to run
 * `docker-machine start default`
 * `docker-machine env default > ~/.docker_env && source ~/.docker_env`

 * OSX only: `docker-machine-nfs default`
 * `make build`
 * `make start`
 * `npm install`

### Additional terminals
Once the docker instance is started you can open up multiple terminals to the project root and type `make bash` to enter the docker environment.
