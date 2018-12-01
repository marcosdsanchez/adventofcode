require "digest/md5"

input = File.read("#{__DIR__}/input")
i = 0
hash = ""
loop do
  hash = Digest::MD5.hexdigest("#{input.strip + i.to_s}")
  break if hash.starts_with? "00000"

  i += 1
end
puts "#{i}"
