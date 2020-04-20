limit = 1000
matrix = Array.new(limit) { Array(Int32).new(limit, 0) }
input = File.each_line("#{__DIR__}/input") do |line|
  matches = line.match(/#(\d+) @ (\d+),(\d+): (\d+)x(\d+)/).not_nil!
  id,left,top,wide,tall = matches.captures.map(&.not_nil!.to_i)
  (left...(left + wide)).each do |x|
    (top...(top + tall)).each do |y|
      matrix[x][y] += 1
    end
  end
end
count = 0
(0...limit).each do |n|
  (0...limit).each do |m|
    count += 1 if matrix[n][m] >= 2
  end
end

puts count