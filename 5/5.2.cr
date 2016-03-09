input = File.read_lines("#{__DIR__}/input")
total = input.each.count do |line|
  line =~ /(..).*\1/ && line =~ /(.).\1/
end
puts total
