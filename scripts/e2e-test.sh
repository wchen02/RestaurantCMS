#!/bin/bash

BASE_DIR=`dirname $0`

echo ""
echo "Starting Karma Server (https://github.com/karma-runner/karma)"
echo "-------------------------------------------------------------------"

../node_modules/.bin/karma start $BASE_DIR/../test/config/karma-e2e.conf.coffee $*
