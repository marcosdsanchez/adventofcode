def iteration
  input = File.read_lines("#{__DIR__}/input")
  input.each_with_index do |item|
    input.each_with_index do |line|
      if item == line
        break
      end
      resulting_string = ""
      item.chars.each_with_index do |char, index|
        if char == line[index]
          resulting_string += char
        end
      end
      if resulting_string.size == (item.chars.size - 1)
        return resulting_string
      end
    end
  end
end

puts iteration
