//Mismo problema, pero con solución enfocada a strings
let x = 121
function isPalindrome(x) {
  if (x < 0) return false
  let container = x
  let numString = container.toString()
  let reversed = ""
  console.log("El numero original es: " + x)
  for (let i = numString.length - 1; i >= 0; i--) {
    reversed = reversed + numString[i]
    console.log(Number(reversed))
  }
  if (x === Number(reversed)) {
    //console.log("El valor: " + x + " es palíndromo")
    return true
  } else {
    //console.log("El numero no es palíndromo")
    return false
  }


}


console.log(isPalindrome(x))