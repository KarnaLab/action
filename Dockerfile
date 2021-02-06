FROM karnalab/karna:v2.0.0

LABEL "author"="Aymeric Aveline"
LABEL "com.github.actions.name"="Karna action"
LABEL "com.github.actions.description"="Deploy your Lambda functions with Karna"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"
LABEL version="2.0.0"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]