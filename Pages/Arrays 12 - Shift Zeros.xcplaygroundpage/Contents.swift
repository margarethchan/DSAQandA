//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 12 - ShiftZeros
 ### Difficulty: Medium
 ### Tags: [Arrays, Duplicates]
 > Problem Description: Given an array of numbers, reset the array to put all the non-zero numbers in front of all the zeros in the array, then return the new array and the count of non-zero numbers.
 - Example:
 Input\
 [3,0,2,0,0,1,0,4]\
 \
 Output\
 [3,2,1,4,0,0,0,0], 4
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/ShiftZerosSolution.md)
func shiftZeros(in arr: [Int]) -> ([Int], Int) {
    let zeroCount = arr.filter{$0 == 0}.count
    let noZeroArr = arr.filter{$0 != 0}
    return (noZeroArr + [Int](repeating: 0, count: zeroCount), zeroCount)
}


//: [Next](@next)
