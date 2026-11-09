#!/usr/bin/env bash
set -euo pipefail

for f in Dockerfile compose.yaml requirements.txt tests/test_smoke.py .github/workflows/ci.yml; do
  [ -f "$f" ] || { echo "fichier manquant : $f" >&2; exit 1; }
done

for f in .env .env.staging .env.deploy; do
  if git ls-files --error-unmatch "$f" >/dev/null 2>&1; then
    echo "$f est suivi par Git : retirez-le" >&2; exit 1
  fi
done

if [ -n "$(git status --porcelain)" ]; then
  echo "des modifications ne sont pas validees" >&2; exit 1
fi

echo "projet OK"
