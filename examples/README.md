# Examples

Ready-made calls and client config files for the Workspace369 MCP server. Each one uses a personal access token, which you create in Workspace369 under **Settings → AI connections → Personal access tokens**. Keep the token on your server or in your shell, never in browser code or a committed file.

```sh
export W369_TOKEN="mcp_pat_..."   # your token
```

| File | What it shows |
|---|---|
| [`mcp-curl.sh`](mcp-curl.sh) | Calls the MCP endpoint over HTTPS with curl: lists the tools, then calls one |
| [`builder-api-curl.sh`](builder-api-curl.sh) | Calls the REST Builder API (Specialist plan and up) |
| [`claude-code.mcp.json`](claude-code.mcp.json) | A project `.mcp.json` for Claude Code that reads the token from your environment |
| [`cursor.mcp.json`](cursor.mcp.json) | `.cursor/mcp.json` for Cursor |
| [`vscode.mcp.json`](vscode.mcp.json) | `.vscode/mcp.json` for VS Code |

Apps like Claude, ChatGPT and Cursor can also sign in with OAuth and need no token at all. See the main [README](../README.md#connect).
