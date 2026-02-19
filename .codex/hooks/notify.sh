#!/bin/bash
# macOS desktop notification when Codex needs attention
# Triggers on: permission prompts, idle prompts, auth events
INPUT=$(cat)
MESSAGE=$(echo "$INPUT" | jq -r '.message // "Codex needs attention"')
TITLE=$(echo "$INPUT" | jq -r '.title // "Codex"')
osascript -e "display notification \"$MESSAGE\" with title \"$TITLE\"" 2>/dev/null
exit 0
