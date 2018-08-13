//: [Previous](@previous)
import Foundation
/*:
 # Integers
 ## 18 - HappyNumbers
 ### Difficulty: Medium
 ### Tags: [Integers, Primes]
 > Problem Description: A happy number is defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits in base-ten, and repeat the process until the number either equals 1 (where it will stay), or it loops endlessly in a cycle that does not include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers (or sad numbers).
 Source: Wikipedia
 > Write a function that determines if a number is happy.
 - Example:
 19 is a happy number\
 \
 12 + 92 = 82\
 \
 82 + 22 = 68\
 \
 62 + 82 = 100\
 \
 12 + 02 + 02 = 1\
 \
 Input\
 19\
 Output\
 true
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/IntegerSolutions/HappyNumbersSolution.md)
func sumOfSquares(of n: Int) -> Int {
    var n = n
    var sum = 0
    while n > 0 {
        sum += Int(pow(Double(n % 10), 2.0))
        n /= 10
    }
    return sum
}

func isHappy(n: Int) -> Bool {
    //Unhappy numbers will loop forever.  To catch this, we will have a slow counter and a fast one.
    var slowHappySum = n
    var fastHappySum = n
    repeat {
        slowHappySum = sumOfSquares(of: slowHappySum)
        fastHappySum = sumOfSquares(of: fastHappySum)
        fastHappySum = sumOfSquares(of: fastHappySum)
        if slowHappySum == 1 { return true }
    } while slowHappySum != fastHappySum
    return false
}

//: [Next](@next)
