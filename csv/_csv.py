import sys
import csv

reader = csv.reader(sys.stdin)

for line in reader:
  record = line

print(record)
