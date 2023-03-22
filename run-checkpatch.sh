#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2023 Chris Wilson <chris@cgnd.dev>
#
# SPDX-License-Identifier: MIT

set -e exec
exec git diff --cached | "${ZEPHYR_BASE}"/scripts/checkpatch.pl -
