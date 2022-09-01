import re
import sys

PATTERN = re.compile(r'^(?P<host>[^ ]*) [^ ]* (?P<user>[^ ]*) \[(?P<time>[^\]]*)\] "(?P<method>\S+)(?: +(?P<path>(?:[^\"]|\\")*?)(?: +\S*)?)?" (?P<code>[^ ]*) (?P<size>[^ ]*)(?: "(?P<referer>(?:[^\"]|\\")*)" "(?P<agent>(?:[^\"]|\\")*)")?$')

def parse(line):
  m = PATTERN.match(line)
  return m.groupdict()

for line in sys.stdin:
  record = parse(line.strip())

print(record)
