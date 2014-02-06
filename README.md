``` shell
brew tap homebrew/binary
brew install docker
export DOCKER_HOST=localhost
curl https://raw.github.com/steeve/boot2docker/master/boot2docker > boot2docker
./boot2docker init
./boot2docker up
docker version
```
