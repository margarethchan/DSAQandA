//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 7 - PairSum
 ### Difficulty: Easy
 ### Tags: [Arrays, Integers]
 > Problem Description: Write a function that takes an integer and an unsorted array of numbers and returns true if there's any pair of numbers in that array that can be summed up to the input integer.
 - Example: Input\
 [1, 3, 5, 4, 2], 7\
 Output\
 true\
 \
 Input\
 [1, 3, 5, 4, 2], 2\
 Output\
 false
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/PairSumSolution.md)
 func pairSum(arr: [Int], target: Int) -> Bool {
 var matchingPairs = Set<Int>()
 for num in arr {
 if matchingPairs.contains(num) {
 return true
 }
 matchingPairs.insert(target - num)
 }
 return false
 }

//: [Next](@next)
