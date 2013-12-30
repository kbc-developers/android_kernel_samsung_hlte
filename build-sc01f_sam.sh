#!/bin/bash

export BUILD_TARGET=SAM
. sc01f.config

time ./_build-bootimg.sh $1
