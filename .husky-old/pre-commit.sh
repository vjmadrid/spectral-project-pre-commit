!/bin/sh
. "$(dirname "$0")/_/husky.sh"

npm test

git status --porcelain | awk '/^ ?[AM].*(swagger|openapi).*\.(yaml|json|yml)/ { print $NF }' | xargs spectral lint --fail-severity=warn --ruleset xxx/ruleset.yaml