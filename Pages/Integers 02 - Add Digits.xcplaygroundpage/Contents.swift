//: [Previous](@previous)
import Foundation
/*:
 # Integers
 ## 16 - AddDigits
 ### Difficulty: Medium
 ### Tags: [Integers]
 > Problem Description: Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.
 - Example:
 38\
 3 + 8 = 11\
 1 + 1 = 2\
 // return 2\
 \
 5419\
 5 + 4 + 1 + 9 = 19\
 1 + 9 = 10\
 1 + 0 = 1\
 // return 1\
 \
 Input\
 38\
 Output\
 2\
 \
 Input\
 5419\
 Output\
 1
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/IntegerSolutions/AddDigitsSolutions.md)
func addDigits(of n: Int) -> Int {
    var n = n
    var sum = 0
    repeat {
        sum = 0
        while n > 0 {
            sum += n % 10
            n /= 10
        }
        n = sum
    } while sum > 9
    return sum
}

//: [Next](@next)
