#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

kube_score_bin=$(mktemp -d)

curl -fsSLo "$kube_score_bin/kube-score" "https://github.com/zegl/kube-score/releases/download/v$KUBE_SCORE_VERSION/kube-score_${KUBE_SCORE_VERSION}_linux_amd64"
chmod +x "$kube_score_bin/kube-score"

echo "$kube_score_bin" >> "$GITHUB_PATH"
