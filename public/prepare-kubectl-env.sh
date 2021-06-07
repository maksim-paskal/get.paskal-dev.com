#!/bin/sh

set -ex

cat > ~/.nanorc <<EOF
set linenumbers
set tabstospaces
set tabsize 2
EOF

export EDITOR=nano
export do="--dry-run=client -o yaml"
alias k=kubectl
source <(kubectl completion bash)
complete -F __start_kubectl k