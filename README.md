# ECMAScript Linter Container Image
[![Build Status](https://travis-ci.org/zephinzer/docker-image-node-eslint.svg?branch=master)](https://travis-ci.org/zephinzer/docker-image-node-eslint)

This repository contains the `Dockerfile` for the image `zephinzer/node-eslint` and is based off the latest Boron build of the `alpine-node` image.

# Usage

```yaml
version: "3"
services:
  eslinter:
    build: ./
    working_dir: /app
    entrypoint: "test"
    volumes:
      - ./:/app
```