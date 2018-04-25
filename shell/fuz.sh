#!/usr/bin/env bash
set -e

main() {
  given_file="$1"
  vim `fzf --preview="cat {}" --preview-window=right:70%:wrap --query="$given_file"`
}

main ""
