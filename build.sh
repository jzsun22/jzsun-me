#!/bin/bash
for file in $(find public -name "*.html"); do
  UNIX_TS=$(git log -1 --format="%at" -- "$file")
  if [ -z "$UNIX_TS" ]; then
    DATE=$(date -u '+%a %b %d %Y %H:%M:%S GMT+0000 (Coordinated Universal Time)')
  else
    DATE=$(date -u -d "@$UNIX_TS" '+%a %b %d %Y %H:%M:%S GMT+0000 (Coordinated Universal Time)')
  fi
  sed -i "s|<!-- Last Published: BUILDDATE -->|<!-- Last Published: $DATE -->|g" "$file"
done
