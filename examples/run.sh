#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_gate_visibility info
PYTHONPATH=src python -m gbt_gate_visibility check --payload '{}'
PYTHONPATH=src python -m gbt_gate_visibility run   --payload '{}'
