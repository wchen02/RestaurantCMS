#!/bin/bash

BASE_DIR=`dirname $0`

echo ""
echo "Starting Karma Server (https://github.com/karma-runner/karma)"
echo "-------------------------------------------------------------------"

../node_modules/.bin/karma start $BASE_DIR/config/karma-unit.conf.coffee $*