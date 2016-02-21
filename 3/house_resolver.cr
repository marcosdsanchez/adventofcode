require "./point"

class HouseResolver
  def self.resolve(input)
    previousPoint = Point.new(0, 0)
    points = [previousPoint]
    input.each_char do |position|
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
    points.to_set
  end
end
