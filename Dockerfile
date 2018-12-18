FROM golang:1.10-alpine3.7 
LABEL version="1.0"
LABEL email="disinterpreter@protonmail.ch"
RUN apk --update add --no-cache wget git \
&& wget https://github.com/go-task/task/releases/download/v2.2.1/task_linux_amd64.tar.gz \
&& tar -xvf task_linux_amd64.tar.gz \
&& mv task /bin \
&& rm -rf ./task_linux_amd64.tar.gz 