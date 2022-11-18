func romanToInt(_ s:String)->Int{
    let romanDictionary: [String:Double] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    var res: [String.Element] = Array(s)
    var result: Int = 0
    
    for i: Int in 0..<romanDictionary.count {
        let currentDouble: Double = romanDictionary[String(res[i])]!
        let next: Double = romanDictionary[String(res[i+1])]!

        if current < next {
            result += next - current // IV -> 5 - 1 = 4
            i++
        }else {
            result += current
        }
    }

    return result
}

romanToInt("MDCXL")