#!/usr/bin/python3.6

import sys

nums = 0.0
nums = [ float(x) for x in sys.argv[1:]]


print(sum(nums))
