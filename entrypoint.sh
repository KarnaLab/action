#!bin/sh
if [[ -z "$AWS_ACCESS_KEY_ID" ]]; then
	echo "⚠️ Set the AWS_ACCESS_KEY_ID env variable"
	exit 1
fi

if [[ -z "$AWS_SECRET_ACCESS_KEY" ]]; then
	echo "⚠️ Set the AWS_SECRET_ACCESS_KEY secret"
	exit 1
fi

if [[ -z "$AWS_REGION" ]]; then
	echo "⚠️ Set the AWS_REGION env variable"
	exit 1
fi

curl -s https://api.github.com/repos/KarnaLab/karna/releases/latest \
| grep "browser_download_url.karna-linux-amd64\.tar\.gz" \
| cut -d ":" -f 2,3 \
| tr -d \" \
| wget -qi -

tarball="$(find . -name "karna-linux-amd64.tar.gz")"
tar -xzf $tarball

chmod +x karna

mv karna $GITHUB_WORKSPACE
# CD into workspace 
cd "$GITHUB_WORKSPACE"

# Run Karna command
./karna deploy -a $1 -f $2