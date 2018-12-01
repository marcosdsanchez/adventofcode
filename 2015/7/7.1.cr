module ExerciseSeven
  struct Wire
    getter wire

    def initialize(@wire : String)
    end
  end

  struct Signal
    getter signal

    def initialize(@signal : UInt16)
    end
  end

  struct Operation
    getter operation

    def initialize(@operation : String)
    end
  end
end

results = Hash(Array(ExerciseSeven::Wire | ExerciseSeven::Operation | ExerciseSeven::Signal), ExerciseSeven::Wire).new
lines = File.read_lines("#{__DIR__}/input")
lines.each do |line|
  case line
  when /([a-z0-9]+) (AND|OR|RSHIFT|LSHIFT) ([a-z0-9]+) -> ([a-z]+)/
    results[[ExerciseSeven::Wire.new($1), ExerciseSeven::Operation.new($2), ExerciseSeven::Wire.new($3)]] = ExerciseSeven::Wire.new($4)
  when /^([a-z]+) -> ([a-z]+)/
    wire1 = $1
    wire2 = $2
  when /^(\d+) -> ([a-z]+)/
    signal = $1
    wire = $2
  when /^NOT ([a-z]+) -> ([a-z]+)/
    operation = "NOT"
    wire1 = $1
    wire = $2
  end
end
