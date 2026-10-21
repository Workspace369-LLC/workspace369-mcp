# Changelog

Versions follow the listing in the [official MCP Registry](https://registry.modelcontextprotocol.io/v0/servers?search=com.workspace369/mcp). The hosted server is updated continuously; this file records changes to the public listing and notable server changes.

## 2026.3.2 (2026-10-21)

- Registry listing now includes the Workspace369 icon, so directories can show our logo.
- Public repo: license, security policy, examples and the crm-starter template.

## 2026.3.1 (2026-10-20)

- The registry description now covers e-sign contracts and workflows.
- The Builder API (`https://mcp.workspace369.com/v1`) is live on Specialist and higher, with a public OpenAPI spec.
- A public server card is at `/.well-known/mcp/server-card.json`.
- The OAuth consent page offers only the workflow levels external apps can use.
- Requests over 1 MB are refused with 413 on `/mcp` and `/v1`.

## 2026.3.0 (2026-10-18)

- First listing in the official MCP Registry as `com.workspace369/mcp`.
