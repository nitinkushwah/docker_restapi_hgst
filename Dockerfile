FROM alpine:3.10

LABEL maintainer="Nitin Kushwah"

ENV LANG C.UTF-8

RUN apk add --update \
    python3 \
  && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

COPY . .

RUN pip3 install requests
ENTRYPOINT [ "./hgst_redfish_report.py" ]
