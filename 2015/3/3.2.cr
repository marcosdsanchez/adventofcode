require "./house_resolver"

input = File.read("#{__DIR__}/input")
santa_input = ""
santa_bot_input = ""
input.each_char_with_index do |char, index|
  if index.even?
    santa_input += char
  else
    santa_bot_input += char
  end
end
points_santa = HouseResolver.resolve(santa_input)
points_santa_bot = HouseResolver.resolve(santa_bot_input)

puts (points_santa | points_santa_bot).size
