#!/bin/bash
# SPDX-FileCopyrightText: 2026 Madoka Hori
# SPDX-License-Identifier: BSD-3-Clause

ng(){
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

out=$(echo -e "I like Python.\nI like Java.\nPython is fun.\nI study C." | python3 search Python)
[ "$?" = 0 ] || ng "$LINENO"

expected=$(echo -e "I like Python.\nPython is fun.")
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo -e "I like Java.\nI study C.\n" | python3 search Python)
[ "$?" = 1 ] || ng "$LINENO"

[ "${out}" = "" ] || ng "$LINENO"

out=$(echo -e "I like Java.\nI study C." | python3 search Python)
[ "$?" = 1 ] || ng "$LINENO"

[ "${out}" = "" ] || ng "$LINENO"

out=$(echo -e "I like Python.\n" | python3 search 2>/dev/null)
[ "$?" = 2 ] || ng "$LINENO"

[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
