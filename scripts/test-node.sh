#!/bin/bash

BASE_DIR=`dirname $0`

../node_modules/.bin/mocha --compilers coffee:coffee-script ../test/node/modelsSpec.coffee $*
