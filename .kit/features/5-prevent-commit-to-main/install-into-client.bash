#!/bin/bash

## This script is called once after the instance is cloned by a KitClient.
## It runs in the clone of the instance in a KitClient.

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH-SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
PROJECT_DIR="$(git rev-parse --show-toplevel)"

cp "$SCRIPT_DIR/prevent-commit-to-main.bash" "$PROJECT_DIR/.git/hooks/post-checkout"
chmod +x "$PROJECT_DIR/.git/hooks/post-checkout"
