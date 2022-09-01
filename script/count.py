#!/usr/bin/env python3

import sys
import re

def normalize(s):
    s = re.sub(r'[a-zA-Z0-9]', "", s)
    s = re.sub(r'\s', "", s)
    s = re.sub(r'[#\(\),.。、:_/-]', "", s)
    return s

note = 0
text = ""

for line in sys.stdin:
    if note:
        text += line
    elif line.startswith("::: notes"):
        note = 1
    elif line.startswith(":::"):
        note = 0

text = normalize(text)
print(text)
print(len(text))
