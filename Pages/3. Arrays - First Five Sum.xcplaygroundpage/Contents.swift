//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 3 - First Five Sum
 ### Difficulty: Easy
 ### Tags: [Arrays, Integers]
 > Problem Description: Find the sum of the first five even numbers in an array of Ints.
 - Example: Input\
 let inputFirstFive = [3,7,-3,2,9,4,8,10,3,9,4,9,8,6,-2]\
 \
 Output\
 28
 */
 let inputFirstFive = [3,7,-3,2,9,4,8,10,3,9,4,9,8,6,-2]
//: PRACTICE

//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/FirstFiveSumSolution.md)
func firstFiveEvenSum(in arr: [Int]) -> Int {
    // "even": return the input array filtered for only even numbers
    // "first five": take an array slice of the first 5 values in the evens array
    // "sum": reduce the array slice values to a single sum
    return arr.filter{$0 % 2 == 0}.prefix(5).reduce(0, +)
}
firstFiveEvenSum(in: inputFirstFive)
//: MY SOLUTION
func sumFirstFiveEven(in arr: [Int]) -> Int {
    var sum = 0
    var evens = [Int]()
    for num in arr {
        guard evens.count < 5 else { return sum }
        if num % 2 == 0 {
            evens.append(num)
            sum += num
        }
    }
    return sum
}

sumFirstFiveEven(in: inputFirstFive)


//: [Next](@next)
