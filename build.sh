#!/usr/bin/env bash
set -e
HUGO_VERSION=0.167.0
curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.tar.gz" | tar xz
./hugo --minify
