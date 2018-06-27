#!/bin/sh
set -eux

if [ -d "apksig_for_tests" ]; then
    rm -rf "apksig_for_tests"
fi

git clone --depth=1 -b android-p-preview-1 https://android.googlesource.com/platform/tools/apksig apksig_for_tests

APKSIG_PATH=apksig_for_tests go test -v ./...
