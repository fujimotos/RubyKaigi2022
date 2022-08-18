def ltsv(line)
    ret = {}
    line.chomp!
    line.split("\t").each do |token|
        k, v = token.split(":", 2)
        ret[k] = v
    end
    ret
end

record = nil
STDIN.each_line do |line|
    record = ltsv(line)
end

puts(record)
