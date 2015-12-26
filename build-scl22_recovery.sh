#!/bin/bash

export BUILD_TARGET=RECO
. scl22.config

time ./_build-bootimg.sh $1
