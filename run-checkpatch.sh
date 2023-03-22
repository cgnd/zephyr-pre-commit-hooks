#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2023 Chris Wilson <chris@cgnd.dev>
#
# SPDX-License-Identifier: MIT

set -e

for file in "$@"
do
    "${ZEPHYR_BASE}"/scripts/checkpatch.pl -f "${file}"
done
