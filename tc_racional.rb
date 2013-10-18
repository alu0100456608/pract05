# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
   def test_suma
      assert_equal(Fraccion.new(25,24),Fraccion.new(2,3).suma(Fraccion.new(3,8)))
      assert_equal(Fraccion.new(31,7),Fraccion.new(8,2).suma(Fraccion.new(3,7)))
   end

   def test_resta 
      assert_equal(Fraccion.new(7,24),Fraccion.new(2,3).resta(Fraccion.new(3,8)))
      assert_equal(Fraccion.new(25,7),Fraccion.new(8,2).resta(Fraccion.new(3,7)))
   end

   def test_producto
      assert_equal(Fraccion.new(1,4),Fraccion.new(2,3).producto(Fraccion.new(3,8)))
      assert_equal(Fraccion.new(12,7),Fraccion.new(8,2).producto(Fraccion.new(3,7)))
   end

   def test_division
      assert_equal(Fraccion.new(16,9),Fraccion.new(2,3).division(Fraccion.new(3,8)))
      assert_equal(Fraccion.new(28,3),Fraccion.new(8,2).division(Fraccion.new(3,7)))
   end
end
