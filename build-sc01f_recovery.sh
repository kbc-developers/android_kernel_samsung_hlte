#!/bin/bash

export BUILD_TARGET=RECO
. sc01f.config

time ./_build-bootimg.sh $1
