//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 13 - ProductOfThree
 ### Difficulty: Medium
 ### Tags: [Arrays, Products, Integers]
 > Problem Description: Given an array of at least three integers, return the largest product you can get by multiplying three numbers together.
 - Example:
 Input\
 [3, 5, 1, 2, 8]\
 \
 Output\
 120\
 \
 Input\
 -10, -4, 2, 3, 5\
 \
 Output\
 200
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/ProductofThreeSolution.md)
func largestProductOfThree(in arr: [Int]) -> Int {
    //Two Positives and one negative
    guard arr.count > 3 else { return arr.reduce(0, *) }
    var maxProduct = Int.min
    //Three Positives
    let sortedPositives = arr.filter{$0 > 0}.sorted{$0 > $1}
    if sortedPositives.count >= 3 {
        maxProduct = sortedPositives[0] * sortedPositives[1] * sortedPositives[2]
    }
    //Two Negatives and One Positive
    let sortedNegatives = arr.filter{$0 <= 0}.sorted{abs($0) > abs($1)}
    if (sortedNegatives.count >= 2 && !sortedPositives.isEmpty) {
        let product = sortedNegatives[0] * sortedNegatives[1] * sortedPositives[0]
        if product > maxProduct {
            maxProduct = product
        }
    }
    //Three Negatives (no positives in array)
    if sortedNegatives.count >= 3 {
        let product = sortedNegatives[sortedNegatives.count - 1] * sortedNegatives[sortedNegatives.count - 2] * sortedNegatives[sortedNegatives.count - 3]
        if product > maxProduct {
            maxProduct = product
        }
    }
    return maxProduct
}

//: [Next](@next)
