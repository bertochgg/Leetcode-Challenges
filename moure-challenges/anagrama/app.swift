/*

Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Boolean) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.

 */

 import Foundation

 let word1:String = "maria"
 let word2:String = "ariam"

 func isAnagram(word1: String, word2: String) -> Bool{
    if word1 == word2{
        return false
    }

    for idx in word1{
        for jdx in word2{
            if idx == jdx{
                return true
            }
        }
    }

    
 }