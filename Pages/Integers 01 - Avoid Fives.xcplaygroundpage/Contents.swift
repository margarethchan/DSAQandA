///: # INTEGER PROBLEMS/: [Previous](@previous)
import Foundation
/*:
 # Integers
 ## 15 - AvoidFives
 ### Difficulty: Easy
 ### Tags: [Integers]
 > Problem Description: Given a range of Ints, return how many numbers are in that range and don't contain the number 5.
 - Example:
 Input\
 1...9\
 Output\
 8\
 \
 Input\
 4...17\
 Output\
 12
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/IntegerSolutions/AvoidFivesSolution.md)
extension Int {
    func contains(_ target: Int) -> Bool {
        var n = self
        while n > 9 {
            if n % 10 == target {
                return true
            }
            n /= 10
        }
        return self == 5
    }
}
func countOfIntsWithoutFive(from lowerBound: Int, to upperBound: Int) -> Int {
    return Array(lowerBound...upperBound).filter{!$0.contains(5)}.count
}

//: MY SOLUTION
extension Int {
    func containss(_ num: Int) -> Bool {
        var val = self
        while val != 0 {
            if val % 10 == num { return true }
            val /= 10
        }
        return false
    }
}
func countNoFives(from start: Int, to end: Int) -> Int {
    var count = 0
    for num in start...end {
        if !num.containss(5) {
            count += 1
        }
    }
    return count
}
countNoFives(from: 1, to: 10)

//: [Next](@next)
