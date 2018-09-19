//: [Previous](@previous)
import Foundation
/*:
 # STRINGS
 ## 25 - ReverseString
 ### Difficulty: Easy
 ### Tags: [Strings]
 > Problem Description: Reverse a string without using the built in reverse method.
 - Example:
 Input\
 "Hello world!"\
 Output\
 "!dlrow olleH"
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/StringSolutions/ReverseStringSolution.md)
let hello = "Hello world!"

func reverse(str: String) -> String {
    var reversedStr = ""
    for i in 0..<str.count {
        reversedStr.append(str[str.index(str.startIndex, offsetBy: str.count - 1 - i)])
    }
    return reversedStr
}

reverse(str: hello)

//: MY SOLUTION
func rev(str: String) -> String {
    var reversedStr = ""
    let strArray = Array(str)
    for i in 0..<strArray.count {
        reversedStr.append(strArray[str.count - 1 - i])
    }
    return reversedStr
}

rev(str: hello)

//: [Next](@next)
