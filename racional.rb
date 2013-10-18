# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
   #Declaración de los accesors para el numerador y el denominador
   attr_reader :num, :denom
   #Constructor que permite inicializar la fraccion con los valores indicados.
   #La fracción almacenada será el resultado de reducirla a su mínima expreción
   def initialize (num,denom)
      @num = num/gcd(num,denom)
      @denom = denom/gcd(num,denom)
   end
  
   #Devuelve esta fracción reducida a su mínima expreción
   def reducir
      num = @num/gcd(@num,@denom)
      denom = @denom/gcd(@num,@denom) 
      
      Fraccion.new(num,denom)
   end
  
   #Devuelve una cadena con la representación del racional
   def to_s
      "#{@num}/#{@denom}"
   end
  
   #Devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
   def suma(fraccion)
      #Se calculan los nuevos valores
      num = @num*fraccion.denom + @denom*fraccion.num
      denom = @denom*fraccion.denom
    
      res = Fraccion.new(num,denom)
      
      #Se reduce la fraccion
      res.reducir
   end
  
   #Devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
   def resta(fraccion)
      num = @num*fraccion.denom - @denom*fraccion.num
      denom = @denom*fraccion.denom
    
      res = Fraccion.new(num,denom)
      
      #Se reduce la fraccion
      res.reducir
   end
  
   #Devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
   def producto(fraccion)
      num = @num*fraccion.num
      denom = @denom*fraccion.denom
    
      res = Fraccion.new(num,denom)
      
      #Se reduce la fraccion
      res.reducir
   end
  
   #Devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
   def division(fraccion) 
      num = @num*fraccion.denom
      denom = @denom*fraccion.num
      
      res = Fraccion.new(num,denom)
      
      #Se reduce la fraccion
      res.reducir
   end
  
   #Sobrecarga del operador == para comprobar igualdad entre fracciones
   def == (fraccion)
      @num == fraccion.num && @denom == fraccion.denom
   end
end

###################################

# a = Fraccion.new(2,3)
# b = Fraccion.new(3,8)
# 
# puts a.to_s
# puts b.to_s
# 
# puts a.suma(b).to_s
# puts a.resta(b).to_s
# puts a.producto(b).to_s
# puts a.division(b).to_s

###################################


