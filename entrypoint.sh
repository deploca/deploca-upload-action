#!/bin/bash

npm i -g @deploca/cli

DEPLOCA_PATH=$1
DEPLOCA_TARGET=$2
DEPLOCA_TOKEN=$3

deploca package:deploy \
    --target=$DEPLOCA_TARGET \
    --path="$DEPLOCA_PATH" \
    --token="$DEPLOCA_TOKEN"

echo "::set-output name=result::DONE"
