# Docker & Chrome & webdriverio


## Local Setup

Build the image:

```
docker build . -t wdio:latest
```

Run the container:

```
docker run --rm -it -v ${PWD}/test:/app/test wdio:latest
```
