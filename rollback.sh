#!/usr/bin/env bash
set -euo pipefail
docker compose -f docker-compose.production.yml down
echo "Service stopped. Data volume is preserved unless explicitly removed."
