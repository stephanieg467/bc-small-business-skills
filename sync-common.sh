#!/usr/bin/env bash
# Copies common/ into every skill's references/common/.
set -euo pipefail
cd "$(dirname "$0")"

for skill in plugin/skills/*/; do
  rm -rf "${skill}references/common"
  cp -r common "${skill}references/common"
done

echo "Synced common/ into $(ls -d plugin/skills/*/ | wc -l) skills"
