#!/usr/bin/env bash
# The CI check: fails when FAIL_CI exists, so a PR can make CI fail on purpose.
set -euo pipefail
if [[ -f FAIL_CI ]]; then echo "FAIL_CI present"; exit 1; fi
echo ok
