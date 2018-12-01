frequency = 0
input = File.each_line("#{__DIR__}/input") do |line|
  frequency += line.to_i
end
puts frequency
