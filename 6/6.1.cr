lines = File.read_lines("#{__DIR__}/input")
grid = Array.new(1000) { Array.new(1000, false) }
lines.each do |line|
  if line.starts_with? "turn"
    first_coordinates = line.split[2].split(',')
    second_coordinates = line.split[4].split(',')
    x_range = first_coordinates[0].to_i..second_coordinates[0].to_i
    y_range = first_coordinates[1].to_i..second_coordinates[1].to_i
    x_range.each do |n|
      y_range.each do |m|
        if line.starts_with? "turn on"
          grid[n][m] = true
        else
          grid[n][m] = false
        end
      end
    end
  elsif line.starts_with? "toggle"
    first_coordinates = line.split[1].split(',')
    second_coordinates = line.split[3].split(',')
    x_range = first_coordinates[0].to_i..second_coordinates[0].to_i
    y_range = first_coordinates[1].to_i..second_coordinates[1].to_i
    x_range.each do |n|
      y_range.each do |m|
        grid[n][m] = !grid[n][m]
      end
    end
  end
end
count = 0
(0...1000).each do |n|
  (0...1000).each do |m|
    count += 1 if grid[n][m]
  end
end

puts count
