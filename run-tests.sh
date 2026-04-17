#!/bin/bash
set -uxeo pipefail
uv sync
uv run python -m unittest discover -s tests -p 'test*.py'
