/*
Given an integer x, return true if x is palindrome integer.

An integer is a palindrome when it reads the same backward as forward.

For example, 121 is a palindrome while 123 is not.
*/

function isPalindrome(x) {
    //Siempre se debe pensar las limitantes del problema
    //Es decir, que valores puede aceptar y cuales no
    //En este caso, como un número negativo no puede ser palindromo, entonces se realiza la siguiente condicional
    //Si x es menor a 0, entonces es un número negativo, por ende, no es palindromo
    if (x < 0) return false

    //Se declaran dos variables
    //reversed: Obtendra el numero al reves
    //y: Sirve para voltear el número x sin modificar el numero original
    let reversed = 0, y = x

    //Si el valor ingresado es mayor a 0
    //recordar que si el numero es menor a negativo, entonces no es palindromo
    while (y > 0) {
        //Truco para obtener el último digito del numero ingresado
        //Se guarda el último digito del valor ingresado en lastDigit, i.e. = 121, el ultimo digito es 1
        const lastDigit = y % 10
        
        //Se va guardando el numero isPalindrome, i.e. = 121, en la primera vuelta reversed = 0, pero se suma el 1, por ende vale 1 en la primera vuelta
        //En la segunda vuelva como y ahora valdra 12, se obtiene en lastDigit el 2, pero como reversed posee un valor, entonces vale 1, por ende, 1 * 10 = 10 + lastDigit(2) = 12
        //En la tercera vuelta reversed vale 12 y en lastDigit se obtiene el 1, entonces siguiendo la operación; reversed = 12 * 10 = 120 + 1 = 121
        reversed = (reversed * 10) + lastDigit
        //En la primera vuelta y = 121, pero se divide entre 10 = 12.1, pero se trunca | 0, por ende, y = 12
        //Es un truco para quitar el decimal de un numero float o double y volverlo un integer
        //En la segundo vuelta y = 12 / 10= 1.2 | 0 = 1
        //En la tercera vuelta y = 1 / 10 = 0.1 | 0 = 0
        //Por ende, y como se expresa en la condicional while, si y == 0, entonces se termina el ciclo
        y = (y / 10) | 0
    }
    //Se evalua si x que es el valor original es igual a reversed una vez finalizado el ciclo while
    //Como x = 121 y reversed = 121, entonces regresara true
    return x === reversed
}