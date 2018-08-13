//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 9 - RemoveDuplicates
 ### Difficulty: Easy
 ### Tags: [Arrays, Duplicates]
 > Problem Description: Remove all duplicates from an array while preserving the order.
 - Example:
 Input\
 [1, 2, 9, 1, 8, 2, 4, 8, 5, 6, 9, 2]\
 \
 Output\
 [1, 2, 9, 8, 4, 5, 6]
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/RemoveDuplicatesSolution.md)
func removeDuplicates(from arr: [Int]) -> [Int] {
    var visitedElements = Set<Int>()
    var duplicateFreeArr = [Int]()
    for num in arr {
        if !visitedElements.contains(num) {
            visitedElements.insert(num)
            duplicateFreeArr.append(num)
        }
    }
    return duplicateFreeArr
}

//: [Next](@next)
