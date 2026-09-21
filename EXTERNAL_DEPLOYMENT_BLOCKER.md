
# External Deployment Blocker

The actual external deployment step requires access to an external execution environment.
No authorized server/cloud account, credentials, network controls, DNS, TLS certificate,
or deployment permission is available to this runtime.

Therefore:
- deployment scripts are prepared;
- deployment is reproducible;
- remote deployment is NOT claimed;
- certification is NOT claimed.

Do not paste production secrets into chat. Supply them through the target environment's
secret-management mechanism.
