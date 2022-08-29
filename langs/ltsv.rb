def ltsv(line)
  ret = {}
  line.split("\t").each { |token|
    k, v = token.split(":", 2)
    ret[k] = v
  }
  ret
end

record = nil
$stdin.each_line(chomp: true) do |line|
  record = ltsv(line)
end

puts(record)
