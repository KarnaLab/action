FROM golang:1.13
LABEL "author"="Aymeric Aveline"
LABEL "com.github.actions.name"="Karna action"
LABEL "com.github.actions.description"="Deploy your Lambda functions with Karna"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"
LABEL version="1.0.0"

# Set the Current Working Directory inside the container
WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh

RUN cd /app  \
  && git clone https://github.com/karnalab/karna.git \
  && cd karna \
  && go install \
  && cd /app

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]