def iteration
  chosen_frequency = nil
  frequency = 0
  frequencies = Hash(Int32,Int32).new(0)
  while chosen_frequency == nil
    File.each_line("#{__DIR__}/input") do |line|
      frequencies[frequency] = frequencies[frequency] + 1
      if frequencies[frequency] == 2
        return frequency
      end
      frequency = frequency + line.to_i
    end
  end
end

puts iteration
