#!/bin/bash

set -e

CWD=$(pwd)
SCRIPT_FOLDER=$(dirname "${BASH_SOURCE[0]}")
TEST_FOLDER=$CWD/sample-app
TEST_APP_NAME="Sample App"

function cleanup() {
    cd $CWD
    rm -rf $TEST_FOLDER
}

function prepare() {
    cd $CWD
    rm -rf $TEST_FOLDER
    mkdir -p $TEST_FOLDER
    cd $TEST_FOLDER
}

# Cleanup test folder in case of error
trap cleanup ERR

echo
echo -------------------------------------------------------------------------------
echo Testing generator without addon
echo -------------------------------------------------------------------------------
echo

prepare()
npx create-ngx --no-analytics --automate "$CWD/tests/app.json" "$TEST_APP_NAME" --no-insights

echo
echo -------------------------------------------------------------------------------
echo Testing generator with addon
echo -------------------------------------------------------------------------------
echo

prepare()
npx create-ngx --no-analytics --automate "$CWD/tests/app.json" "$TEST_APP_NAME" --no-insights --addons addon-firebase

echo
echo -------------------------------------------------------------------------------
echo Testing generator with addon from url/git
echo -------------------------------------------------------------------------------
echo

prepare()
npx create-ngx --no-analytics --automate "$CWD/tests/app.json" "$TEST_APP_NAME" --no-insights --addons https://github.com/ngx-rocket/addon-firebase.git

cleanup()
