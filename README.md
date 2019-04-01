# docker-spectector
Docker image for Spectector, a tool for reasoning about information flows produced by speculatively executed instructions.

For more information about Spectector please visit https://spectector.github.io/

## Build

1. Download and build https://github.com/emmanuel099/docker-ciao
2. `make build`

## Usage

```
docker run -it --mount src="$(pwd)",target=/workspace,type=bind -w /workspace --rm spectector somefile.muasm
```
