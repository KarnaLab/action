#!/bin/sh
if [[ -z "$AWS_ACCESS_KEY_ID" ]]; then
	echo "⚠️ Set the AWS_ACCESS_KEY_ID secret"
	exit 1
fi

if [[ -z "$AWS_SECRET_ACCESS_KEY" ]]; then
	echo "⚠️ Set the AWS_SECRET_ACCESS_KEY secret"
	exit 1
fi

if [[ -z "$AWS_REGION" ]]; then
	echo "⚠️ Set the AWS_REGION secret"
	exit 1
fi
# Run Karna command
/root/karna deploy -a $1 -f $2