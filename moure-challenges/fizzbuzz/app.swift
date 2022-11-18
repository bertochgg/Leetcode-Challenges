 /** Enunciado: Escribe un programa que muestre por consola (con un print) los números de 1 a 100 (ambos incluidos y con un salto de línea entre cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".*/

 import Foundation

for idx in 1...100{
    var comprobacionFizz: Int = idx % 3
    var comprobacionBuzz: Int = idx % 5

    if comprobacionFizz == 0 && comprobacionBuzz == 0{
        print("FizzBuzz")
    }else if comprobacionFizz == 0{
        print("Fizz")
    }else if comprobacionBuzz == 0{
        print("Buzz")
    }else{
        print(idx)
    }
}


