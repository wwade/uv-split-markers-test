#!/bin/bash

set -uxeo pipefail

PATH=$PATH:$HOME/.local/bin
export PATH
curl -LsSf https://astral.sh/uv/install.sh | sh
hash -r
which uv
uv --version
uv lock
uv sync
uv tree
uv pip list
./run-tests.sh
