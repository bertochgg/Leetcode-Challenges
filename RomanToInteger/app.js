/*
Given a roman numeral, convert it to an integer.
*/
function romanToDecimal(romanString) {
    const romanDictionary = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    }

    let resultado = 0;

    for (i = 0; i < romanString.length; i++) {
        const cur = romanDictionary[romanString[i]];
        const next = romanDictionary[romanString[i + 1]];

        if (cur < next) {
            resultado += next - cur // IV -> 5 - 1 = 4
            i++
        } else {
            resultado += cur
        }
    }

    return resultado;
}

let myVar = console.log(romanToDecimal("MCMXCVII"));


//Ciclo
// 0. MC = 1000
// 1. CM = [1000] + 900 = 1900
// 3. XC = [1900] + 90 = 1990
// 5. VI = [1990] + 5 = 1995
// 6. II = [1995] + 2 = 1997
// 7. Termina 