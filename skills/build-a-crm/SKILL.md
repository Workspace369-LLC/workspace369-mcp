---
name: build-a-crm
description: Build a custom CRM web app on Workspace369 as the backend, using the workspace369-crm MCP tools. Use when the user wants a CRM, client list, pipeline board or internal dashboard built on their Workspace369 clients, follow-ups, notes, proposals and invoices.
---

# Build a CRM on Workspace369

Workspace369 is the system of record. The app you build reads and writes clients, pipeline stages, custom fields, follow-ups, notes, proposal drafts and invoice drafts through the `workspace369-crm` MCP server (`https://mcp.workspace369.com/mcp/crm`). Do not create your own tables for these records.

If the tools are missing, ask the user to run `/mcp`, pick **workspace369-crm** and sign in in the browser. A workspace admin must first turn on **Allow AI connections** under Settings, AI, AI connections. Never ask for, print or store a token.

## Steps

1. **List the tools first.** List the available `workspace369-crm` tools and read the descriptions of the ones you plan to use. If a tool you need is not in the list, show that part of the app as unavailable. Do not guess how it works.

2. **Step 0, before any code.** Call `workspace_get_context`, then `workspace_schema` to see the current pipeline stages, client fields and lead sources. Propose the stages and custom fields this business needs. Call `crm_apply_blueprint` with `dry_run` true and show the user the preview. Call it with `dry_run` false only after the user says yes. It keeps what already exists and deletes nothing. Then plan the screens.

3. **Ask for the stack if unclear.** Default to Next.js (App Router) with TypeScript. Add unit tests with mocked tool responses.

4. **Build these screens:**
   - Client list with search (`clients_search`) and a "follow up today" filter, with a header from `pipeline_summary`: clients per stage, new and stalled clients.
   - Client page (`clients_get`) with contact details, open proposals (`proposals_search`), invoices (`invoices_search`), notes (`notes_search`), and the next follow-up from `follow_ups_list`, with buttons to schedule one (`follow_ups_create`) and mark it done (`follow_ups_complete`).
   - A "new client" form (`clients_create`).

5. **Verify.** Run the tests, the type check and the build, and fix failures. Then start the app with the two environment variables set, load each screen once, and fix any error the server logs.

## Rules

- Call the tools from server code only: an API route, a backend function or a script.
- Never put an access token in browser code, logs or the repository. Read the token from `WORKSPACE369_TOKEN` and the server URL from `WORKSPACE369_MCP_URL`, on the server only. Do not search config files for either. The user creates the token as a personal access token in Workspace369 with only the scopes the app needs.
- Read lists in one call: use the search tools with their filters and a `limit` of up to 100, and follow `nextCursor`. Keep one MCP client open and cache the workspace schema for a minute or two.
- Sends are drafts. This address creates proposal and invoice drafts (`proposals_create_draft`, `invoices_create_draft`) and sends nothing to a client. Tell the user the draft is waiting for their approval in Workspace369. Never claim something was sent.
- Handle errors: a refused call returns an error result with a reason, and a rate-limited call returns 429 with a `Retry-After` header.
- Every successful call counts toward the workspace's AI usage, and one page load can make several calls. Keep screens to few calls.
- Run the app on the user's computer for now, and tell them what to add before their team uses it over a network, such as sign-in and hosting.

Full guide: https://docs.workspace369.com/v/2026.3/build-with-ai/build-a-custom-crm-with-an-ai-coding-agent/
