lines = File.read_lines("#{__DIR__}/input")
lines.each do |line|
  puts line.inspect
  puts line.bytesize
  puts line.size
end
