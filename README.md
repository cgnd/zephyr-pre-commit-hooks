# zephyr-pre-commit-hooks

A collection of pre-commit hooks for use with [Zephyr RTOS](https://github.com/zephyrproject-rtos/zephyr).

## Using zephyr-pre-commit-hooks with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
repos:
  - repo: https://github.com/cgnd/zephyr-pre-commit-hooks
    rev: v0.1.0
    hooks:
    - id: checkpatch
```

## Hooks available

### `checkpatch`

This hook runs the `${ZEPHYR_BASE}/scripts/checkpatch.pl` script on on C source files.

> **Note**
>
> This hook depends on `${ZEPHYR_BASE}` environment variable to be set. Make sure to run `source <zephyr>/zephyr-env.sh` as described in [Zephyr Environment Scripts](https://docs.zephyrproject.org/latest/develop/env_vars.html#zephyr-environment-scripts).
