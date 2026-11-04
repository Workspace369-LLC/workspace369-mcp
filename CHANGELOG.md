# Changelog

Versions follow the listing in the [official MCP Registry](https://registry.modelcontextprotocol.io/v0/servers?search=com.workspace369/mcp). The hosted server is updated continuously; this file records changes to the public listing and notable server changes.

## Server changes since 2026.3.2 (2026-11-04)

- The Builder API is on every plan (Cadet and up), including the 14-day trial; it was Specialist and higher.
- New MCP resource `workspace369://getting-started` ("Getting started with Workspace369"): starter prompts, approval rules and setup guides. Listed in the server card.
- A workspace created from a sign-up link with `next=ai-connections` opens on AI connections with them already on.

## 2026.3.2 (2026-10-21)

- Registry listing now includes the Workspace369 icon, so directories can show our logo.
- `server.json` now carries publisher-provided metadata (website, MCP integration page, docs, pricing, server card, categories, keywords and the main tools) for directories that read the registry. Not published yet.
- Public repo: license, security policy, examples and the crm-starter template.

## 2026.3.1 (2026-10-20)

- The registry description now covers e-sign contracts and workflows.
- The Builder API (`https://mcp.workspace369.com/v1`) is live on Specialist and higher, with a public OpenAPI spec.
- A public server card is at `/.well-known/mcp/server-card.json`.
- The OAuth consent page offers only the workflow levels external apps can use.
- Requests over 1 MB are refused with 413 on `/mcp` and `/v1`.

## 2026.3.0 (2026-10-18)

- First listing in the official MCP Registry as `com.workspace369/mcp`.
