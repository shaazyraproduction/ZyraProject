
# ZYRA External Deployment Runbook

## What this bundle can do
It packages the tested ZYRA production candidate for deployment to a Docker-capable host.

## What this environment cannot do
This chat environment does not possess an authorized external server, cloud account,
DNS/TLS certificate, production secret store, firewall/network control, or permission
to deploy to your infrastructure. Therefore no external deployment is claimed by this artifact.

## Required external target
- Linux host or managed container platform
- Docker Engine + Compose (or equivalent)
- persistent storage
- network ingress
- TLS/reverse proxy
- secret management
- monitoring/alerting

## Deployment
1. Copy `candidate/` and `deployment/` to the authorized host.
2. Create a production secret:
   `export ZYRA_API_KEY='GENERATE-A-STRONG-SECRET'`
3. Run:
   `cd deployment && ./deploy.sh`
4. Verify:
   `BASE_URL=http://HOST:8080 ./verify.sh`
5. Put TLS/reverse proxy in front of the service before exposing it publicly.
6. Capture deployment evidence: host/platform, image digest, timestamp, health result,
   integration result, security controls, backup/restore result, operator acceptance.

## Certification boundary
A successful local or remote health check does not itself equal V20 certification.
Certification requires the evidence and authorized acceptance defined by the ZYRA
Production Certification Gate.
