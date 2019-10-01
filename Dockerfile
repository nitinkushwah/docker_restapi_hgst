FROM alpine:3.10

ENV LANG C.UTF-8

RUN apk add --update \
    python3 \
  && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

COPY . .

RUN pip3 install requests
ENTRYPOINT [ "python3", "./hello.py" ]
