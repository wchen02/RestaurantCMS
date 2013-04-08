#!/bin/bash

BASE_DIR=`dirname $0`

export NODE_ENV=test
mocha node/pictureModelSpec.coffee --compilers coffee:coffee-script$*
