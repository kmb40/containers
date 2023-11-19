FROM alpine

#RUN apk upgrade #used to correct High finding by upgrading to latest version of Alpine
RUN apk add --no-cache bash

WORKDIR /app

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]