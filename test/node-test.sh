#!/bin/bash

BASE_DIR=`dirname $0`

export NODE_ENV=test
export NODE_CONFIG_DIR=`pwd`/../config
mocha node/pictureModelSpec.coffee --compilers coffee:coffee-script$*
