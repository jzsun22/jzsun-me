#!/bin/bash
for file in $(find public -name "*.html"); do
  DATE=$(TZ=UTC git log -1 --format="%ad" --date=format:"%a %b %d %Y %H:%M:%S GMT+0000 (Coordinated Universal Time)" -- "$file")
  if [ -z "$DATE" ]; then
    DATE=$(date -u '+%a %b %d %Y %H:%M:%S GMT+0000 (Coordinated Universal Time)')
  fi
  sed -i "s|<!-- Last Published: BUILDDATE -->|<!-- Last Published: $DATE -->|g" "$file"
done
