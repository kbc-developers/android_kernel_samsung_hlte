#!/bin/bash

export BUILD_TARGET=SAM
. scl22.config

time ./_build-bootimg.sh $1
