require "crypto/md5"

input = File.read("#{__DIR__}/input")
i = 0
hash = ""
loop do
  hash = Crypto::MD5.hex_digest("#{input.strip + i.to_s}")
  break if hash.starts_with? "00000"

  i += 1
end
puts "#{i}"
