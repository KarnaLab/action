# Karna action

This action will deploy your lambda functions with Karna Docker image.

## Inputs

### `alias`

**Required** The targeted alias based on your karna.json file.

### `target`

**Required** Your function name based on your karna.json file.

## Example usage

:warning: AWS env vars are required to upadate your lambdas.

```yaml
uses: karbonn/karna-action@master
with:
  target: "<Function Name>"
  alias: "<Alias>"
env:
  AWS_ACCESS_KEY_ID: "${{ secrets.AWS_ACCESS_KEY_ID }}"
  AWS_SECRET_ACCESS_KEY: "${{ secrets.AWS_SECRET_ACCESS_KEY }}"
  AWS_REGION: "${{ secrets.AWS_REGION }}"
```
