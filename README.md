# zephyr-pre-commit-hooks

[![REUSE status](https://api.reuse.software/badge/github.com/cgnd/zephyr-pre-commit-hooks)](https://api.reuse.software/info/github.com/cgnd/zephyr-pre-commit-hooks)

A collection of pre-commit hooks for use with [Zephyr RTOS](https://github.com/zephyrproject-rtos/zephyr).

Check out https://cgnd.dev/posts/enforce-zephyr-code-quality-pre-commit/ for a deep dive into using pre-commit in Zephyr applications.

## Using zephyr-pre-commit-hooks with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
repos:
  - repo: https://github.com/cgnd/zephyr-pre-commit-hooks
    rev: v1.0.0 # Use the ref you want to point at
    hooks:
    - id: zephyr-checkpatch-diff
```

## Hooks available

### `zephyr-checkpatch-diff`

This hook runs the `${ZEPHYR_BASE}/scripts/checkpatch.pl` script on any C source file changes staged in the git index (i.e. it only checks the output of `git diff --cached` and does not check entire files). As a result, trying to run `checkpatch.pl` against all existing files in a repository using the command `pre-commit run --all-files` will NOT work.

> **Note**
>
> This hook depends on `${ZEPHYR_BASE}` environment variable to be set. Make sure to run `source <zephyr>/zephyr-env.sh` as described in [Zephyr Environment Scripts](https://docs.zephyrproject.org/latest/develop/env_vars.html#zephyr-environment-scripts).

## Copyright & License Information

Code and content is copyright © Common Ground Electronics and individual contributors.

Code, including source files and code samples (if any in the content), is dual-licensed under either the [MIT](https://opensource.org/license/mit/) or the [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) license. This means you can use the code in your own projects under either license of your choosing. When you contribute code to this repository, your contribution shall be dual licensed as above, without any additional terms or conditions.

Content, including documentation, is licensed under the [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) license, which gives you permission to use the content for almost any purpose (but does not grant you any trademark permissions), so long as you note the license and give credit.

### SPDX & REUSE Compliance

This repository is compliant with version 3.0 of the [REUSE Specification](https://reuse.software/spec/).

License files are contained in the [LICENSES/](LICENSES/) directory and additional license & copyright information can be found in [.reuse/dep5](.reuse/dep5).

Run the following commands for detailed copyright & license information on individual files:

```sh
pip install reuse
reuse spdx
```
