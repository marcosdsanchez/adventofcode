class InputString
  def initialize(@str)
  end

  def is_nice?
    has_min_vowels? &&
      has_at_least_one_char_that_repeats? &&
      !has_blacklisted_sequence?
  end

  def has_min_vowels?
    matches = @str.chars.select do |char|
      {'a', 'e', 'i', 'o', 'u'}.includes?(char)
    end
    matches.size >= 3
  end

  def has_at_least_one_char_that_repeats?
    [@str].grep(/(.)\1+/).any?
  end

  def has_blacklisted_sequence?
    blacklist = {"ab", "cd", "pq", "xy"}
    blacklist.find(false) do |sequence|
      @str.includes?(sequence)
    end
  end
end
