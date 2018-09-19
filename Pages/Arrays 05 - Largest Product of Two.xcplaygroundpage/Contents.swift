//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 5 - LargestProductOfTwo
 ### Difficulty: Easy
 ### Tags: [Arrays, Products]
 > Problem Description: Given an array of Ints, find the two numbers that when multiplied together give the greatest product, and return that product.
 - Example: Input\
 let largeProdInput = [1, 2, 7, 3, 9, 5]\
 \
 Output\
 63
 */
let largeProdInput = [1, 2, 7, 3, 9, 5]
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/LargestProductofTwoSolution.md)
func largestProductOfTwo(in arr: [Int]) -> Int? {
    guard arr.count > 1 else { return nil }
    guard arr.count > 2 else { return arr[0] * arr[1] }
    var maxProduct = Int.min
    //Largest of two positives
    let sortedPositives = arr.filter{$0 > -1}.sorted{$0 > $1}
    if sortedPositives.count >= 2 {
        maxProduct = sortedPositives[0] * sortedPositives[1]
    }
    //Largest of two negatives
    let sortedNegatives = arr.filter{$0 < 0}.sorted{abs($0) > abs($1)}
    if sortedNegatives.count >= 2 {
        let product = sortedNegatives[0] * sortedNegatives[1]
        if product > maxProduct {
            maxProduct = product
        }
    }
    return maxProduct
}

//: ASHLEE SOLUTION
func largestProductOfTwoInts(in arr: [Int]) -> Int {
    var largestInt = 0
    var secondLargestInt = 0
    var product = 1
    for i in arr {
        if i > largestInt {
            largestInt = i
        }
    }
    for i in arr {
        if i < largestInt && i > secondLargestInt {
            secondLargestInt = i
        }
    }
    product *= largestInt * secondLargestInt
    return product
}
largestProductOfTwoInts(in: largeProdInput)

//: [Next](@next)
