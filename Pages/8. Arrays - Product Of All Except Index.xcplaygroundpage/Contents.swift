//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 8 - ProductOfAllExeptIndex
 ### Difficulty: Easy
 ### Tags: [Arrays, Products]
 > Problem Description: Write a function that takes an array of integers and returns an array where each index is the product of the input array not including that index. Do not use division in your solution.
 - Example:
 Input\
 [1, 7, 3, 4]\
 \
 Output\
 [84, 12, 28, 21]
 */
let input8 = [1,7,3,4]
//: PRACTICE


//: SOLUTION
//: [C4Q](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/ProductOfAllExceptIndexSolution.md)
func productOfAllExceptIndex(in arr: [Int]) -> [Int] {
    var topArr = [Int](repeating: 0, count: arr.count)
    var product = 1
    for i in 0..<arr.count {
        topArr[i] = product
        product *= arr[i]
        //        print("topArr: \(topArr)")
    }
    var botArr = [Int](repeating: 0, count: arr.count)
    product = 1
    for i in (0..<arr.count).reversed() {
        botArr[i] = product
        product *= arr[i]
        print("botArr: \(botArr)")
    }
    var finalArr = [Int]()
    for i in 0..<arr.count {
        finalArr.append(topArr[i] * botArr[i])
        print("finalArr: \(finalArr)")
    }
    return finalArr
}

productOfAllExceptIndex(in: input8)

//: [Next](@next)
