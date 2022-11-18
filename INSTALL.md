# Overview 

We recommend using the Docker based setup to play around with CryptOpt.
If you want to actually use CryptOpt for production, the results can typically be improved by running it bare metal.
See below install instructions.

The main entry point is the `./CryptOpt` script, the `--help` option gives options.
You can `sudo make install-zsh`, if you want to get `zsh` completion.


## With Docker

1. [Install Docker](https://docs.docker.com/get-docker).
1. Download and extract the tarball or clone this repository recursively, then change into the directory containing the `Dockerfile`
1. Build Container  
Build the container with `docker build . -t cryptopt`. (`.` is the *build context*. It's the path containing the `Dockerfile`)
This will take a while. (Maybe around 1-2 hours, depending on Internet bandwidth and machine) (Note: It is expected that the some output is red. This is warnings of the build process piped to stderr).
The build was successful if it ends with `Sucessfully tagged cryptopt:latest`
The build command will create a container image tagged `cryptopt`, where all the dependencies are installed and the projects are built, ready to go.

1. Run the container image with `docker run --name CryptOpt -ti cryptopt bash` -> you are now in the built project, your terminal should change to something like `root@abcdef1234:~/CryptOpt#`


## Bare Metal
CryptOpt itself will only write files in the operating systems' temp directory (`/tmp/` on Linux) and in its own subdirectories.
It will require internet access to download the (Node.js) runtime and dependencies

1. Install dependencies (will install globally) (c.f. Dockerfile `apt install` command(s))
1. Install [AssemblyLine](https://github.com/0xADE1A1DE/Assemblyline) (will install globally)
1. Clone the repo with `--recurse-submodules` to also clone submodules like [MeasureSuite](https://github.com/0xADE1A1DE/MeasureSuite).
1. Enable performance counters `echo "1" | sudo tee /proc/sys/kernel/perf_event_paranoid` (MeasureSuite will otherwise fall back to use `RDTSCP` to count cycles)
1. Build CryptOpt with `make all`.
CryptOpt already contains pre-built binaries for fiat-crypto.
If you want to build them fresh, too, follow the build instructions in [the Dockerfile](./Dockerfile) or [on Fiat-Cryptography's GitHub](https://github.com/mit-plv/fiat-crypto).
Then copy the standalone-ocaml binaries from `./src/ExtractionOCaml/{unsaturated_solinas, word_by_word_montgomery}` to `./src/bridge/fiat-bridge/data` and create their checksums
