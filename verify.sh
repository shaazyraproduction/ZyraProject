#!/usr/bin/env bash
set -euo pipefail
BASE_URL="${BASE_URL:-http://localhost:8080}"
: "${ZYRA_API_KEY:?Set ZYRA_API_KEY before verification}"
curl -fsS "$BASE_URL/health"
curl -fsS "$BASE_URL/ready"
curl -fsS -X POST "$BASE_URL/v1/run" \
  -H "Content-Type: application/json" \
  -H "x-api-key: $ZYRA_API_KEY" \
  -d '{"request":"deployment verification","capability":"ai_system_development"}'
curl -fsS "$BASE_URL/v1/audit" -H "x-api-key: $ZYRA_API_KEY"
echo
echo "REMOTE/DEPLOYMENT VERIFICATION COMMANDS COMPLETED"
