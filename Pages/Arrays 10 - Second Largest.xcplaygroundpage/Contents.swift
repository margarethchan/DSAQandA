//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 10 - SecondLargest
 ### Difficulty: Easy
 ### Tags: [Arrays, Integers]
 > Problem Description: Given an array of integers, find the second largest integer.
 - Example:
 Input\
 [1, 4, -2, -9, 2, 5, -1, 10, 4]\
 \
 Output\
 5
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/SecondLargestSolution.md)
//O(nlog(n))
func secondLargest(in arr: [Int]) -> Int? {
    guard arr.count > 1 else { return nil }
    return arr.sorted{$0 > $1}[1]
}

//O(n)
func secondLargestLinear(in arr: [Int]) -> Int? {
    guard arr.count > 1 else { return nil }
    var largest = Int.min
    var secondLargest = Int.min
    for num in arr {
        if num > largest {
            secondLargest = largest
            largest = num
        } else if num > secondLargest {
            secondLargest = num
        }
    }
    return secondLargest
}


//: [Next](@next)
