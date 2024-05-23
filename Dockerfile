FROM ubuntu:latest

ENTRYPOINT ["/bin/bash", "-c", "echo Hello, world! && date"]
