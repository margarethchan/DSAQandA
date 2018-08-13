//: [Previous](@previous)
import Foundation
/*:
 # Merge Sort
 [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/Sorting/nLognSorts)
 
Merge sort has a runtime of O(n * log(n))\
Here's how it works:
1. If the array only has one element, return it
2. Call this function on the left side and the right side. Set these calls equal to variables left and right
3. Merge left and right together (assuming that left and right are sorted) and return that array
*/
/*:
- Example:
var arr1 = [3,1]
1. Skip this as there are two elements
2. This call will return [3] and [1]
3. Merge [3] and [1] to make [1,3] and return it
*/
/*:
- Example:
var arr2 = [3,1,8,2]
1. Skip this as there are four elements
2. We set left equal to this function passing in [3,1] and right equal to this function passing in [8,2] . As we see from example one, left = [1,3]. We can deduce that right = [2,8]
3. Merge [1,3] and [2,8] to make [1,2,3,8] and return it
 */
/*:
- Example:
var arr3 = [3,1,8,2,10,4,6,5]
1. Skip this as there are eight elements
2. We set left equal to this function passing in [3,1,8,2] and right equal to this function passing in [10,4,6,5] . As we see from example two, left = [1,2,3,8]. We can deduce that right = [4,5,6,10]
3. Merge [1,2,3,8] and [4,5,6,10] to make [1,2,3,4,5,6,8,10] and return it
*/
//: ## Implementation
func mergeSort(arr: [Int]) -> [Int] {
    print("running mergesort on \(arr)")
    guard arr.count > 1 else {return arr}
    let midPoint = arr.count / 2
    let left = mergeSort(arr: Array(arr[..<midPoint]))
    let right = mergeSort(arr: Array(arr[midPoint...]))
    return merge(left, and: right)
}

func merge(_ arr1: [Int], and arr2: [Int]) -> [Int] {
    var indexOne = 0
    var indexTwo = 0
    var mergedArr = [Int]()
    while indexOne < arr1.count && indexTwo < arr2.count {
        if arr1[indexOne] < arr2[indexTwo] {
            mergedArr.append(arr1[indexOne])
            indexOne += 1
        } else {
            mergedArr.append(arr2[indexTwo])
            indexTwo += 1
        }
    }
    let finalArr = mergedArr + Array(arr1[indexOne...]) + Array(arr2[indexTwo...])
    print("\tmerging \(arr1) and \(arr2) to make \(finalArr)")
    return finalArr
}

var arr3 = [3,1,8,2,10,4,6,5]
mergeSort(arr: arr3)

//: [Next](@next)
