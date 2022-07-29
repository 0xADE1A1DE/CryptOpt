## Docker

The installation steps for docker depend on your OS.

(Note: If your host OS is Linux and Docker is installed via Snap.io there is [known issue with docker cp](https://github.com/docker/for-linux/issues/564).
Either install via default docker guidelines, or copy to `/tmp` and find copied files in `/tmp/snap.docker/tmp`)

### Copy Files from the Docker Container

If you want to copy the files from the container onto your host (e.g. to view the `pdf` file) copy it *as long as the container is running* (i.e. with a different terminal) with `sudo docker cp CryptOpt:/root/CryptOpt/results/curve25519/square/seed000000000.pdf /tmp`.

