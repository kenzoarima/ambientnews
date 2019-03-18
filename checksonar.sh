#!/bin/bash

OUTPUT="$(curl -s -u 716cb3fe910a6b045112c469b81ff08f712b1ec0: https://sonarcloud.io/api/qualitygates/project_status\?projectKey\=testphp1 | jq '.projectStatus.status')"

echo $OUTPUT

if [[ "$OUTPUT" == "ERROR"  ]]; then
    exit 1;
fi
