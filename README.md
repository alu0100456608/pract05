Respuetas:
	1. ¿Cuál es el error en el código del método para calcular el máximo común divisor?
		La condición del bucle while no es correcta, en lugar de repetirse mientras v == 0, se debe repetir mientras v > 0
	
	2. ¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración
		Usé el comando "ruby -rdbug gcd.rb" para iniciar el depurador, luego usé los comandos 's' y 'l' para eejcutar el código paso a paso hasta darme cuenta de que la condición del bucle no era correcta.


