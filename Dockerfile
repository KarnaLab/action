FROM docker.pkg.github.com/karbonn/karna/karna:latest

LABEL "com.github.actions.name"="Karna action"
LABEL "com.github.actions.description"="Deploy your Lambda functions with Karna"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"

COPY entrypoint.sh /app/entrypoint.sh

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]