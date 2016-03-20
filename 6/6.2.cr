lines = File.read_lines("#{__DIR__}/input")
grid = Array.new(1000) { Array.new(1000, 0) }
lines.each do |line|
  if line =~ /(turn on|turn off|toggle) (\d+),(\d+) through (\d+),(\d+)/
    command = $1
    x1,y1,x2,y2 = {$2,$3,$4,$5}.map &.to_i
    (x1..x2).each do |x|
      (y1..y2).each do |y|
        case command
        when "turn on"
          grid[x][y] += 1
        when "turn off"
          grid[x][y] -= 1 unless grid[x][y] == 0
        when "toggle"
          grid[x][y] += 2
        end
      end
    end
  end
end

puts grid.sum &.sum
