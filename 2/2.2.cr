lines = File.read_lines("#{__DIR__}/input")
total = lines.each.sum do |line|
  l, w, h = line.strip.split("x").map(&.to_i)
  [l, w, h].sort.take(2).map { |n| n * 2 }.sum + l * w * h
end
puts total
