#!/usr/bin/python3.6
# SPDX-FileCopyrightText: 2022 Tsukasa Momma
# SPDX-License-Identifier: BSD-3-Clause

import sys

def tonum(s):
    try:
        return int(s)
    except:
        return float(s)


    

ans = 0 
for line in sys.stdin:
    ans += tonum(line)

print(ans)

