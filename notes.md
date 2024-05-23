# Demo notes

## 11: Minimal images

```
docker image ls ubuntu:latest
docker image ls alpine:latest
docker image ls gcr.io/distroless/static-debian12
```

## 14: Rebuild regularly

```
grype ubuntu:focal-20231003
grype ubuntu:focal-20240216
```

## 16: They aren't hidden

```
cd ~/git/secrets-abound
cat Dockerfile
docker build –t secrets:demo .
docker history secrets:demo
dive secrets:demo
```

## 19/20: Elevated privileges/Run as non-root

```
cd ~/git/privileged
docker build -t privileged:latest .
docker run --rm -it --privileged privileged:latest bash
mount /dev/sdc /mnt/gotcha
cd /mnt/gotcha
ls -l
```

```
docker build -t privileged:latest .
docker run --rm -it --privileged privileged:latest bash
mount /dev/sdc /mnt/gotcha
whoami
```

## 22/23: Supply chain attacks/Use digests

```
cd ~/git/hello-world-sh
# docker build -t helloworld:evil -f Dockerfile.evil .
docker build -t helloworld:latest .
docker push ...
docker run --rm -it helloworld:latest
docker tag helloworld:evil helloworld:latest
docker run --rm -it helloworld:latest
```

```
docker run --rm -it helloworld@sha256:xxx
```
