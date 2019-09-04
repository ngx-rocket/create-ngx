#!/bin/bash

set -e

CWD=$(pwd)
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
echo Testing generator without add-on
echo -------------------------------------------------------------------------------
echo

prepare
create-ngx --no-analytics --no-insights --automate "$CWD/scripts/tests/app.json" "$TEST_APP_NAME" --skip-install

echo
echo -------------------------------------------------------------------------------
echo Testing generator with add-on
echo -------------------------------------------------------------------------------
echo

prepare
create-ngx --no-analytics --no-insights --automate "$CWD/scripts/tests/app.json" "$TEST_APP_NAME" --addons addon-firebase --skip-install

echo
echo -------------------------------------------------------------------------------
echo Testing generator with add-on from url/git
echo -------------------------------------------------------------------------------
echo

prepare
create-ngx --no-analytics --no-insights --automate "$CWD/scripts/tests/app.json" "$TEST_APP_NAME" --addons https://github.com/ngx-rocket/addon-firebase.git --skip-install

cleanup
