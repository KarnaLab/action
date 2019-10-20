FROM golang:1.13
LABEL "author"="Aymeric Aveline"
LABEL "com.github.actions.name"="Karna action"
LABEL "com.github.actions.description"="Deploy your Lambda functions with Karna"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

# Set the Current Working Directory inside the container
WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh

RUN cd /app  \
  && git clone https://github.com/karbonn/karna.git \
  && cd karna \
  && go install \
  && cd /app

LABEL version="1.0.0"

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]