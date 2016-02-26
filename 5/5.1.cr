require "./InputString"

lines = File.read_lines("#{__DIR__}/input")
puts lines.select { |line| InputString.new(line).is_nice? }.size
