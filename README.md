# zephyr-pre-commit-hooks

A collection of pre-commit hooks for use with [Zephyr RTOS](https://github.com/zephyrproject-rtos/zephyr).

Check out https://cgnd.dev/posts/enforce-zephyr-code-quality-pre-commit/ for a deep dive into using pre-commit with Zephyr applications.

## Using zephyr-pre-commit-hooks with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
repos:
  - repo: https://github.com/cgnd/zephyr-pre-commit-hooks
    rev: v0.1.3 # Use the ref you want to point at
    hooks:
    - id: zephyr-checkpatch
```

## Hooks available

### `zephyr-checkpatch`

This pre-commit hook runs the `${ZEPHYR_BASE}/scripts/checkpatch.pl` script *only* on any changes staged in the git index for the next commit (i.e. it only checks the output of `git diff --cached` and does NOT check entire files).

> **Warning**
>
> Trying to run `checkpatch.pl` against all files in the repo using the command `pre-commit run --all-files` will NOT work. This is because running pre-commit on the output of `git diff` is not one of the supported pre-commit workflows–[it's intended to operate on files](https://github.com/pre-commit/pre-commit/issues/2574#issuecomment-1298483258).

> **Note**
>
> This hook depends on `${ZEPHYR_BASE}` environment variable to be set. Make sure to run `source <zephyr>/zephyr-env.sh` as described in [Zephyr Environment Scripts](https://docs.zephyrproject.org/latest/develop/env_vars.html#zephyr-environment-scripts).
