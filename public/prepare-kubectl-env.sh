#!/bin/bash

set -ex

cat > ~/.nanorc <<EOF
set linenumbers
set tabstospaces
set tabsize 2
EOF

export EDITOR=nano
export do="--dry-run=client -o yaml"

source <(kubectl completion bash)

alias k=kubectl
complete -F __start_kubectl k