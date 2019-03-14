# coding: utf-8
=begin
Ejemplo de clase de ruby creada con en un Ahorcado 
15/II/19 
=end 

class Ahorcado
  # contructor del ahorcado
  def initialize( palabrilla)
    @palabra = palabrilla
    @intentos_restantes = 7
    @tam = @palabra.length
    @adivinada = "_ " * @tam

    print "Aquí tiene la palabra que tiene que adivinar \t "
    puts @adivinada # , "Sin lugar a dudas esa palabra no es #{@palabra}"
  end # end initialize 

  def letra (letra)
    
    last_index = @palabra.index(letra)
    
    # En caso de haber encuentro actualizamos el encuentro
    if last_index
      # evitar repetición de letras
      if @adivinada[last_index*2] == letra
        puts "Niñooo, ya me has dicho esa letra"
      else
      
        while last_index
          @tam -= 1
          @adivinada[last_index*2] = letra
          last_index = @palabra.index(letra, last_index+1)
        
        end
      
        puts "#{letra} estaba en la palabra: #{@adivinada} \n"
      end # fin de si se repite esa letra
      
      # si todavía quedan letras por adivinar
      if @tam > 0
        return true
      else
        return false
      end
      
      # fin de la letra dicha está en la palabra
    else
    
      @intentos_restantes -= 1
      puts "Lo siento, #{letra} no se encontraba en la palabra " #{@adivinada}
      puts "Sin ánimo de presionar te queda #{@intentos_restantes} >:))"
      if @intentos_restantes > 0
        return true
      else
        return false
      end
      
    end

  end #letra

  def ganado
    if @intentos_restantes == 0
      return false
    else
      return true
    end
  end

  def solucion
    return @palabra
  end
  
end # fin de la declaración de la clase


  
