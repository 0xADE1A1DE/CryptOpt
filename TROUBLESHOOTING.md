## Docker

The installation steps for docker depend on your OS.

(Note: If your host OS is Linux and Docker is installed via Snap.io there is [known issue with docker cp](https://github.com/docker/for-linux/issues/564).
Either install via default docker guidelines, or copy to `/tmp` and find copied files in `/tmp/snap.docker/tmp`)

### Copy Files from the Docker Container

If you want to copy the files from the container onto your host (e.g. to view the `pdf` file, or extract the generated `asm`) copy it *as long as the container is running* (i.e. with a different terminal) with `docker cp CryptOpt:/root/CryptOpt/results/fiat/ /tmp` and find on your host system `/tmp/fiat/fiat_curve25519_carry_mul/...`.

### Docker build errors 404

On some builds in some regions for bizarre phenomenon the `apt install` command errors with a 404 Not Found. (on `systemd`).
The issue seems to be caused by caching. (For example docker may cache some layers from the quick install which are no longer valid a couple days later, when the full version is being evaluated.)
If the `apt update` layer is cached, then some `apt install`'s yield this error.
You can hopefully resolve this issue with rebuilding the container without caching intermediate layers: use `docker build . --no-cache -t cryptopt`.

### I've installed docker but get permission denied errors

Symptoms:
`docker ps` gives:

```
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
```
`docker build ...` gives:
```
ERROR: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied
```

1. Check Post install instructions [here](https://docs.docker.com/engine/install/linux-postinstall/).
    Usually you need to add your user to the docker group or use `$sudo docker` all the time (former is preferred)

1. Check `sudo systemctl status docker` and maybe 
    start the docker daemon with `sudo systemctl start docker `

1. Check if running `docker ps` gives `CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES`. Then you should be good to go.


### Name already in use

When executing `docker run -ti --name CryptOpt` I get an error
```
docker: Error response from daemon: Conflict. The container name "/CryptOpt" is already in use by container "9c181e7e0aa52ab0d31040c36f793b221baf6f6d162daf668de2f949469df133". You have to remove (or rename) that container to be able to reuse that name.
```
- (preferred) either remove the current Container with `docker rm CryptOpt` and try again, or
- (will eventually clutter your system) use a different name `docker run -ti --name CryptOpt2 cryptopt zsh`, or
- (same and you need to find the right container to copy files from `docker ps -a` may help) use no name `docker run -ti cryptopt zsh`,  to get a name automatically randomly assigned, something like `clever_wilson`, `gracious_hugle`

### I've lost connection to the container.

If you disconnect (CTRL+C) from the interactive session, the container dies.
It can be restarted with `docker start CryptOpt` and can be attached to with `docker attach CryptOpt`.
Then you should be back with `abcdef1234#`


### I want another shell into the container

In order to open another shell into the contianer, you can run `docker exec -ti CryptOpt zsh`
