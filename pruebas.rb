
last_index = ARGV[0].index(ARGV[1])

while last_index
  puts "Se ha encontrado ",  last_index
  last_index = ARGV[0].index(ARGV[1], last_index+1)
end
