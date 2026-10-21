#!/usr/bin/env sh
# Call the Workspace369 Builder API (REST). Available on Specialist and higher.
# Spec: https://mcp.workspace369.com/v1/openapi.json
# Usage: W369_TOKEN=mcp_pat_... sh builder-api-curl.sh
set -eu
BASE="https://mcp.workspace369.com/v1"

# Search clients.
curl -sS "$BASE/clients?query=acme" -H "Authorization: Bearer $W369_TOKEN"
echo

# List proposals.
curl -sS "$BASE/proposals" -H "Authorization: Bearer $W369_TOKEN"
echo
