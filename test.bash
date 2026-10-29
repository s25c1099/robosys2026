#!/bin/bash

ng(){
     echo ${1}行目のテスト失敗
     res=1
}

res=0
a=堀
[ "$a" = 掘 ] || ng "$LINENO"
[ "$a" = 堀 ] || ng "$LINENO"

exit $res
