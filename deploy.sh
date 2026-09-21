#!/usr/bin/env bash
set -euo pipefail
: "${ZYRA_API_KEY:?Set ZYRA_API_KEY before deployment}"
docker compose -f docker-compose.production.yml up -d --build
echo "Deployment command completed. Verify with: curl http://localhost:8080/health"
