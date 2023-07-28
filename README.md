# Checkson check for verifying that Docker images are present in a registry

You can use this check to verify that Docker images are present in a registry.
When any of the configured images are not present, the check fails.

## Environment variables

| Variable           | Description |
|--------------------|-------------|
| `IMAGES`           | Comma-separated list of images, e.g. `redis:7,postgres:15.3` |

## Use check on Checkson

This check can be used on [checkson.io](https://checkson.io) (or anywhere else) with the following Docker image:

```
ghcr.io/checkson-io/checkson-docker-image-exists-check:main
```

## Run check locally

```
docker run \
  --env IMAGES=redis:7,postgres:15.3 \
  --rm \
  -it \
  ghcr.io/checkson-io/checkson-docker-image-exists-check:main
```
