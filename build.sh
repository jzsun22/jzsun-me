#!/bin/bash
DATE=$(date -u '+%a %b %d %Y %H:%M:%S GMT+0000 (Coordinated Universal Time)')
find public -name "*.html" -exec sed -i "s|<!-- Last Published: BUILDDATE -->|<!-- Last Published: $DATE -->|g" {} \;
