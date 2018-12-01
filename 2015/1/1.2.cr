input = File.read("#{__DIR__}/input")

count = 0
input.each_char_with_index do |char, index|
  if char == '('
    count += 1
  else
    count -= 1
  end
  if count == -1
    puts index + 1
    break
  end
end
