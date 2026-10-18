# Workspace369 MCP server

The official remote [Model Context Protocol](https://modelcontextprotocol.io) server for [Workspace369](https://workspace369.com/). It is the all-in-one workspace for businesses that deliver client work: CRM, proposals, contracts and e-signature, invoices and payments, projects and tasks, calendar and booking, time tracking, a shared inbox and workflows.

Connect Claude, ChatGPT, Cursor, VS Code, Windsurf or any MCP client to your Workspace369 workspace. The AI app can then look up a client, draft an invoice or proposal, schedule work, log time or reply to a lead in plain language. Every call runs as you, within your own permissions.

```text
https://mcp.workspace369.com/mcp
```

- Transport: Streamable HTTP
- Auth: OAuth sign-in with your Workspace369 account (no API key to paste). Scripts and agents that can't open a browser use a [personal access token](https://docs.workspace369.com/v/2026.3/ai-connections/personal-access-tokens/).
- Hosted by Workspace369. Nothing to install or run locally.

This repository holds the public listing metadata ([`server.json`](server.json)) and connection docs. The server itself is operated by Workspace369 LLC and is not open source.

## Connect

**Claude (claude.ai, Desktop):** add a custom connector with the URL, then sign in.

**ChatGPT:** on plans that offer developer mode, add a custom connector (app) with the URL, then sign in.

**Cursor / Windsurf** (`mcp.json`):

```json
{
  "mcpServers": {
    "workspace369": {
      "url": "https://mcp.workspace369.com/mcp"
    }
  }
}
```

**VS Code** (`.vscode/mcp.json`):

```json
{
  "servers": {
    "workspace369": {
      "type": "http",
      "url": "https://mcp.workspace369.com/mcp"
    }
  }
}
```

**Claude Code:**

```sh
claude mcp add --transport http workspace369 https://mcp.workspace369.com/mcp
```

When the app connects, Workspace369's sign-in page opens. Choose the workspace and set an access level for each area (None, View, Edit, Edit and send, and so on). The app never gets more than you approve. A workspace admin must first turn MCP on under Settings → AI Connections (MCP).

Full guide: [Connect an AI app to your workspace](https://docs.workspace369.com/v/2026.3/ai-connections/connect-an-ai-app-to-your-workspace/).

## What it can do

119 tools across these areas ([full tools reference](https://docs.workspace369.com/v/2026.3/ai-connections/mcp-tools-reference/)):

| Area | Examples |
|---|---|
| Workspace | `workspace_get_context`, `workspace_business_summary`, `batch_apply` |
| Clients and requests | `clients_search`, `clients_create`, `requests_search`, `requests_convert_to_client`, `requests_respond` |
| Proposals | `proposals_create_draft`, `proposals_update_draft`, `proposals_send` |
| Contracts | `contracts_create_draft`, `contracts_send`, `contracts_remind` |
| Invoices and payments | `invoices_create_draft`, `invoices_send`, `payments_record`, `invoice_payments_summary` |
| Projects and tasks | `projects_create`, `tasks_search`, `tasks_create`, `tasks_comment_add` |
| Calendar and booking | `calendar_list_events`, `calendar_create_event`, `calendar_check_availability`, `booking_pages_list` |
| Time tracking | `time_entries_create`, `time_entries_search`, `timesheets_list` |
| Inbox | `search_workspace_messages`, `inbox_send_message` |
| Workflows | `automations_list`, `automations_create_draft`, `automations_test`, `automations_runs_list` |
| Notes, catalog, team, reminders | `notes_create`, `products_list`, `team_members_list`, `reminders_create` |

Some actions are deliberately left out and stay in the app: deleting clients, invoices, projects and other records, changing team members or permissions, editing existing workflows, publishing intake forms, sending marketing campaigns and uploading files.

## Example prompts

- "Which invoices are overdue, and who owes the most?"
- "Draft a proposal for Acme for a website redesign using my catalog prices, but don't send it."
- "Log 2 hours today on the Acme project as billable."
- "What's on my calendar tomorrow, and is anyone on the team free at 3 pm?"
- "Find the latest email from Jane and draft a reply."

## Security and billing

- Each call is checked against your role's permissions. Members limited to specific clients see only those clients.
- Sends (invoices, proposals, inbox messages, contracts) need the matching "send" level you granted, and wait for approval in the Workspace369 app unless the person who connected the app turned on "send without asking".
- Calls draw on the workspace's monthly AI usage allowance; failed calls are free. See [How MCP access is controlled and billed](https://docs.workspace369.com/v/2026.3/ai-connections/mcp-permissions-tokens-and-audit/).
- The workspace owner is notified when someone connects an app, and connections can be revoked at any time.

## Links

- Website: https://workspace369.com/
- Docs: https://docs.workspace369.com/
- Pricing (14-day free trial): https://workspace369.com/pricing/
- iPhone app: https://apps.apple.com/us/app/workspace369/id6475013419
- Support: support@workspace369.com

© Workspace369 LLC.
