# Security policy

## Reporting a vulnerability

Please report security issues privately. Email **support@workspace369.com** with the subject "Security report". Don't open a public GitHub issue.

Include what you found, the steps to reproduce it, and the affected URL or tool. We'll confirm we received it and keep you updated until it's resolved.

Our policy and contact details are also published at:

- https://workspace369.com/security/
- https://workspace369.com/.well-known/security.txt

## Scope

- The hosted MCP server at `https://mcp.workspace369.com/mcp`, its OAuth endpoints, and the Builder API at `https://mcp.workspace369.com/v1`.
- The files in this repository.

## How the server protects your workspace

- OAuth 2.1 sign-in with per-area access levels the user chooses. Personal access tokens are scoped and can expire or be revoked.
- Every call runs as the signed-in user and is checked against their role's permissions.
- Sends to clients (proposals, invoices, contracts, inbox messages) wait for approval in the Workspace369 app unless the user turned on "send without asking".
- The workspace owner is notified when an app connects, and connections can be revoked at any time.
