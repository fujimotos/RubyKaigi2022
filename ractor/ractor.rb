
PATTERN = /^(?<host>[^ ]*) [^ ]* (?<user>[^ ]*) \[(?<time>[^\]]*)\] "(?<method>\S+)(?: +(?<path>(?:[^\"]|\\")*?)(?: +\S*)?)?" (?<code>[^ ]*) (?<size>[^ ]*)(?: "(?<referer>(?:[^\"]|\\")*)" "(?<agent>(?:[^\"]|\\")*)")?$/

def parse(line)
  m = PATTERN.match(line)
  return m.named_captures.freeze
end

workers = 4.times.map do
  Ractor.new do
    loop do
      line = Ractor.receive 
      Ractor.yield parse(line)
    end
  end
end

workers.each do |w|
  w.send $stdin.readline.freeze
end

record = nil
$stdin.each_line(chomp: true) do |line|
  w, record = Ractor.select(*workers)
  w.send line.freeze
end

workers.each do |w|
  record = w.take
end

puts(record)
