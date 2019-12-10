# :rocket: create-ngx

[![NPM version](https://img.shields.io/npm/v/create-ngx.svg)](https://www.npmjs.com/package/create-ngx)
[![Build Status](https://github.com/ngx-rocket/create-ngx/workflows/build/badge.svg)](https://github.com/ngx-rocket/create-ngx/actions)
[![Build Status](https://sinedied.visualstudio.com/oss-pipelines/_apis/build/status/ngx-rocket.create-ngx?branchName=master)](https://sinedied.visualstudio.com/oss-pipelines/_build/latest?definitionId=3&branchName=master&WT.mc_id=createngx-github-yolasors)
![Node version](https://img.shields.io/node/v/create-ngx.svg)
[![XO code style](https://img.shields.io/badge/code_style-XO-5ed9c7.svg)](https://github.com/sindresorhus/xo)

![ngx-rocket logo](https://user-images.githubusercontent.com/593151/28924751-08023b32-7863-11e7-9186-c17d4647d861.png)

> The fastest way to rocket start your Angular projects

This package is a **no-install** frontend for [ngX-Rocket](https://github.com/ngx-rocket/generator-ngx-rocket).
It allows you to use the latest ngX-Rocket CLI with any local or remote add-ons from NPM without having to install it on your machine.

See [ngX-Rocket documentation](https://github.com/ngx-rocket/generator-ngx-rocket) for the full details and options.

*Note: This package does not replace the original `ngx` CLI, it is aimed to compliment it by providing an always-fresh, no-install alternative.
If you plan to frequently generate new projects, it is better to install the `generator-ngx-rocket` globally to use the local `ngx` CLI instead of `create-ngx` that will always fetch the latest version from the network.*

![create-ngx demo animation](https://user-images.githubusercontent.com/593151/64329581-cc0b8e00-cfcf-11e9-91cf-1bcb50f3f30a.gif)

## Usage

To create a new project, just run:
```sh
npm init ngx
```
or
```sh
yarn create ngx
```
or simply
```sh
npx create-ngx
```

Any supported [ngX-Rocket option](https://github.com/ngx-rocket/generator-ngx-rocket#generator-options) can be used.

### Using add-ons

You can provide a coma-separated list of add-ons to use using the `--addons` option.
By default add-ons will be fetched from NPM, but any [supported package format](https://docs.npmjs.com/files/package.json#dependencies) can be used, so local packages and private git repositories for example works too.

Some examples:
```sh
npm init ngx --addons addon-firebase # fetch generator-addon-firebase from NPM
npm init ngx --addons ../my-local-addon # use local add-on
npm init ngx --addons ngx-rocket/addon-firebase # add-on from github repo
npm init ngx --addons https://github.com/ngx-rocket/addon-firebase.git # add-on from git repo
npm init ngx --addons addon-firebase,addon-azure-deploy # multiple add-ons can be provided
```

*Note: when using add-ons from NPM, the `generator-` prefix is automatically added for you if you don't specify it.*

## What's included?

See [the list of features here](https://github.com/ngx-rocket/generator-ngx-rocket#whats-in-the-box).

# License

[MIT](LICENSE)
