# coding: utf-8
load 'ahorcado.rb'
require 'io/console'

#~~~~~~~ selección de palabra ~~~~~~~~~~~

# procedemos a leer las palabras de un archivo
# el nombre del archivo se ha pasado por argumentos
palabras = Array.new

#puts "El fichero del que se toman las palabras es " + ARGV[0]
File.open(ARGV[0], "r").each do |file|
  file.each_line do |line|
    palabras.push(line)
    #puts line
  end 
end

# Seleccionamos aleatoriamente una palabra de las anteriores
p = Ahorcado.new( palabras[rand( palabras.length())].chop! )

## #####################################


## ~~~~~~~~~~ bucle de preguntar letras 
puts "Dígame un letra"
l = STDIN.getch

while p.letra(l)
  # leer otra letra
  puts "Dígame un letra"
  l = STDIN.getch
end
## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Comprobar si ha adivinado la palabra 

if p.ganado()
  puts "Enhorabuena, ha salvado una vida"
else
  puts ":( pues parece que has perdido"
  puts "La solución era " + p.solucion()
  

end
