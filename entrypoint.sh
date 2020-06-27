#!/bin/bash

npm i -g @deploca/cli

DEPLOCA_PATH=$1
DEPLOCA_TARGET=$2

deploca package:deploy \
    --target=$DEPLOCA_TARGET \
    --path="$DEPLOCA_PATH"

echo "::set-output name=result::DONE"
