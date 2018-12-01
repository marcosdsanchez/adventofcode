require "./house_resolver"

puts HouseResolver.resolve(File.read("#{__DIR__}/input")).size
