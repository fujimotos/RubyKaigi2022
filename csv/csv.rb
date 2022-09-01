require 'csv'

csv = CSV.new($stdin)

record = nil
csv.each do |line|
  record = line
end

puts(record)
