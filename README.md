# Prettier with Git Diff/Blame Support

> Prettier config with shell scripts to enable better Git Diff/Blame

[![Build Status](https://travis-ci.com/freight-trust/prettier.svg?branch=master)](https://travis-ci.com/freight-trust/prettier)

## Overview

Contains Shell Scripts for making Git Diff/Blame's easier using Prettier

## Getting started

To install `@freight-trust/prettier-config` in your project, you will need to run the
following command using [npm](https://www.npmjs.com/):

```bash
npm install -S @freight-trust/prettier-config
```

If you prefer [Yarn](https://yarnpkg.com/en/), use the following command
instead:

```bash
yarn add prettier-config-carbon
```

## Usage

You can use this prettier configuration by creating a `prettier.config.js` file
in the root of project and using this package in the following way:

```js
"use strict";

const prettierConfig = require("@freight-trust/prettier-config");
module.exports = prettierConfig;
```

## Shell Scripts

See [./bin](/bin)

## 🙌 Contributing

We're always looking for contributors to help us fix bugs, build new features,
or help us improve the project documentation. If you're interested, definitely
check out our [Contributing Guide](/.github/CONTRIBUTING.md)! 👀

## 📝 License

Licensed under the [Apache 2.0 License](/LICENSE).
