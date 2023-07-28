FROM docker:24-cli

COPY . /app
WORKDIR /app

RUN apk add --no-cache bash

ENTRYPOINT ["bash", "check.sh"]
