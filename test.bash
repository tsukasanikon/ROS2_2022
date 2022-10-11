#!/bin/bash  
# SPDX-FileCopyrightText: 2022 Tsukasa Momma
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG as Line $1
	res=1
}	

res=0

### I/O TEST ###
out=$(seq 5 | ./plus) 
[ "${out}" = 15 ] || ng $LINENO

### Strange input ###
out=$(echo あ | ./plus)
[ "$?" = 1      ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo  | ./plus)
[ "$?" = 1      ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
