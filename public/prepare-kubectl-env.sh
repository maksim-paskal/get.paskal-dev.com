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
alias k-get-pods="kubectl get pods -A"
alias k-test="kubectl apply --dry-run=client --validate -f "
alias k-run-curl="kubectl run test -it --rm --image=nginx:alpine --restart=Never -- curl --max-time 5 "