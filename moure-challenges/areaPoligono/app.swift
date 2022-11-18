/*
* Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
*/

import Foundation

protocol figura {
    var base: Double { get set }
    var altura: Double { get set }

    func areaPoligono(base: Double, altura: Double) -> Double
}

extension figura {
    func areaPoligono(base: Double, altura: Double) -> Double{
        return base * altura
    }
    
}

struct Cuadrado: figura {

    var base: Double
    var altura: Double

    func areaPoligono(base: Double, altura: Double) -> Double{
        return base * altura
    }
}

struct Rectangulo: figura {

    var base: Double
    var altura: Double

    func areaPoligono(base: Double, altura: Double) -> Double{
        return base * altura
    }
}

struct Triangulo: figura {

    var base: Double
    var altura: Double

    func areaPoligono(base: Double, altura: Double) -> Double{
        return (base * altura)/2.0
    }
}

var cuadrado = Cuadrado(base: 10.0, altura: 10.0)
print(cuadrado.areaPoligono(base: cuadrado.base, altura: cuadrado.altura))

var triangulo = Triangulo(base: 10.0, altura: 5)
print(triangulo.areaPoligono(base: triangulo.base, altura: triangulo.altura))