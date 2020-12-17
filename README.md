# Dockerfile for Node.js 12.x, Yarn, and AWS CLI

Have you ever wanted a Docker container with Node.js, Yarn, and the AWS CLI? I have. So here it is.

## Building

> docker build -t node-aws .

## Publishing

List image IDs for recent builds on your host.

```sh
> docker images
```

Make sure you're logged in

```sh
> docker login
```

Publish Y'all

```sh
> docker tag <image-id> swarzyllc/node-aws:latest
> docker push swarzyllc/node-aws
```

Run shell locally to test it out

```sh
docker run -it swarzyllc/node-aws /bin/bash
```
