let nums = [6, 6, 8, 1, 9, 10]
var target = 12

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //Ciclo para recorrer el arreglo de la posicion 0 a su maxima posicion
    //nums.count = nums.length
    for i in 0..<(nums.count - 1) {
        //variable constante que guarda cada iteración de i
        let ni = nums[i]
    //Ciclo para recorrer el arreglo 
    //Comienza de 0 + 1 hasta el límite del arreglo
	for j in (i + 1)..<nums.count {
        //Si 0(6) + 1(6) == target = true
	    if ni + nums[j] == target {
            //retorna valores 
	        return [i, j]
	    }
	}
    }
    //Retorna el arreglo que solicita la funcion [Int]
    return []
}