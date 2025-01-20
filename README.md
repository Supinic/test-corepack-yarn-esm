# test-corepack-yarn-esm

This repository aims to showcase the error that occurs when an ESM project is built with `corepack` + `yarn`.

## Usage

1. `git clone` this repository
2. `cd` to the project directory
3. Attempt to `docker build -t yarn-test .`
4. Observe the error

## Error 

```text
Error: Dynamic require of "util" is not supported
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:4:394
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:4:3568
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:4:474
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:9:46349
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:4:474
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:401:1509
    at file:///home/test/.cache/node/corepack/v1/yarn/4.6.0/yarn.js:745:448
    at ModuleJob.run (node:internal/modules/esm/module_job:272:25)
    at async onImport.tracePromise.__proto__ (node:internal/modules/esm/loader:580:26)
    at async asyncRunEntryPointWithESMLoader (node:internal/modules/run_main:98:5)
```

