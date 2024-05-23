# hello-world-sh

An example of doing a bad thing to an unsecured container.

## Bad thing

```shell
cd ~/git/hello-world-sh
# docker build -t helloworld:evil -f Dockerfile.evil .
docker build -t helloworld:latest .
docker push ...
docker run --rm -it helloworld:latest
docker tag helloworld:evil helloworld:latest
docker run --rm -it helloworld:latest
```

## Better

```
docker tag remoterepo
docker push remoterepo # to get the remote SHA256
docker run --rm -it helloworld@sha256:xxx
```

