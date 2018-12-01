lines = File.read_lines("#{__DIR__}/input")
total = 0
lines.each do |line|
  l, w, h = line.strip.split("x").map(&.to_i)
  areas = [l * w, w * h, h * l]
  slack = areas.min
  wrapping_paper = areas.map { |area| area * 2 }.sum
  total += wrapping_paper + slack
end
puts total
