import sys

def ltsv(line):
    ret = {}
    line = line.strip()
    for token in line.split("\t"):
        k, v = token.split(":", maxsplit=1)
        ret[k] = v
    return ret



for line in sys.stdin:
    record = ltsv(line)


print(record)
