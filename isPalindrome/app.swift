
//Given an integer x, return true if x is palindrome integer.

//An integer is a palindrome when it reads the same backward as forward.

//For example, 121 is a palindrome while 123 is not.

var x: Int = 456

func isPalindrom(x: Int) -> Bool{
    var y = x
    var numString = String(y)
    var reversed: String = ""
    if x < 0{
        return false
    }
    for idx in ((numString)).reversed(){
        reversed.append(idx)
     }

    var reversedToInt = Int(reversed)
    print(reversedToInt)
    if reversedToInt == x {
        return true
    }else{
        return false
    }

} 
var myFunc = print(isPalindrom(x: x))