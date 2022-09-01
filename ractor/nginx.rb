PATTERN = /^(?<host>[^ ]*) [^ ]* (?<user>[^ ]*) \[(?<time>[^\]]*)\] "(?<method>\S+)(?: +(?<path>(?:[^\"]|\\")*?)(?: +\S*)?)?" (?<code>[^ ]*) (?<size>[^ ]*)(?: "(?<referer>(?:[^\"]|\\")*)" "(?<agent>(?:[^\"]|\\")*)")?$/

def parse(line)
  m = PATTERN.match(line)
  return m.named_captures
end

record = nil
$stdin.each_line(chomp: true) do |line|
  record = parse(line)
end

puts(record)
