#!/usr/bin/python3.6

import sys

ans = 0 
for line in sys.stdin:
    line= line.rstrip() 
    try:
        ans += int(line)
    except:
        ans += float(line)

print(ans)

