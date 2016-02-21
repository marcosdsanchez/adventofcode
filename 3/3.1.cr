struct Point
  getter x, y

  def initialize(@x, @y)
  end
end

input = File.read("#{__DIR__}/input")
previousPoint = Point.new(0, 0)
points = [previousPoint]
input.each_char_with_index do |position, index|
  case position
  when '^'
    points << Point.new(previousPoint.x, previousPoint.y + 1)
  when 'v'
    points << Point.new(previousPoint.x, previousPoint.y - 1)
  when '>'
    points << Point.new(previousPoint.x + 1, previousPoint.y)
  when '<'
    points << Point.new(previousPoint.x - 1, previousPoint.y)
  end
  previousPoint = points.last
end

puts points.uniq.size
