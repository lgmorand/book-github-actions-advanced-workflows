#!/bin/bash

repos=(
  "actions/checkout"
  "actions/setup-node"
  "actions/upload-artifact"
  "actions/download-artifact"
  "actions/configure-pages"
  "actions/upload-pages-artifact"
  "actions/deploy-pages"
  "docker/setup-qemu-action"
  "docker/setup-buildx-action"
  "docker/login-action"
  "docker/metadata-action"
  "docker/build-push-action"
  "sigstore/cosign-installer"
  "azure/login"
  "azure/setup-helm"
  "azure/webapps-deploy"
  "azure/load-testing"
  "github/codeql-action"
  "helm/chart-releaser-action"
  "oras-project/setup-oras"
  "peter-evans/dockerhub-description"
  "zaproxy/action-full-scan"
  "trufflesecurity/trufflehog"
)

for repo in "${repos[@]}"; do
  tag=$(gh api "repos/${repo}/releases/latest" --jq '.tag_name' 2>&1)
  if [ $? -ne 0 ]; then
    tag=$(curl -s "https://api.github.com/repos/${repo}/releases/latest" | grep -o '"tag_name": *"[^"]*"' | head -1 | cut -d'"' -f4)
  fi
  printf "%-40s %s\n" "$repo" "$tag"
done
