#!/usr/bin/env sh
# Call the Workspace369 MCP endpoint over HTTPS with a personal access token.
# Usage: W369_TOKEN=mcp_pat_... sh mcp-curl.sh
set -eu
URL="https://mcp.workspace369.com/mcp"

# 1. List the tools available to this token.
curl -sS "$URL" \
  -H "Authorization: Bearer $W369_TOKEN" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list","params":{}}'
echo

# 2. Read the workspace context (name, plan, your role).
curl -sS "$URL" \
  -H "Authorization: Bearer $W369_TOKEN" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d '{"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"workspace_get_context","arguments":{}}}'
echo
