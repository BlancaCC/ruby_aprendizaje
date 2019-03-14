# coding: utf-8
=begin
Dado un texto por argumentos, devueve sólo las primeras incidencias de una palabra
Granada 16/II/19
=end

palabras = Array.new()
for palabra in ARGV
  #puts palabra
  if not palabras.include?(palabra)
    palabras.push( palabra)
  end

  
end

print palabras.join(' '), "\n"
