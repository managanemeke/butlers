set shell := ["bash", "-c"]

default: list

list:
  @just --list

hi:
  #!/usr/bin/env bash
  set -euo pipefail
  for directory in source/*/*/; do
    (cd $directory && just hi)
  done

