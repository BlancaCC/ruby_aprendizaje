puts "Se procede a leer del siguiente fichero " + ARGV[0] 

f = File.open(ARGV[0], "r")
f.each_line do |line|
  puts line
end
f.close
