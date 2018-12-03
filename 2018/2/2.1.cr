two_matches = 0
three_matches = 0

File.each_line("#{__DIR__}/input") do |line|
  is_two_matches = false
  is_three_matches = false
  stored = Hash(Char,Int32).new(0)  
  line.chars.each do |char|
    stored[char] += 1
  end
  stored.each do |key, value|
    if value == 2
      is_two_matches = true
    end
    if value == 3
      is_three_matches = true
    end
  end
  if is_two_matches
    two_matches += 1
  end
  if is_three_matches
    three_matches += 1
  end
end

puts two_matches * three_matches
