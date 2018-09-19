//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 11 - MergeSortedArrays
 ### Difficulty: Medium
 ### Tags: [Arrays]
 > Problem Description: Given two sorted arrays, write a function that returns a single sorted list with all the elements from the inputs. Your solution must work in O(n) time.
 - Example:
 Input\
 [3, 4, 6, 10, 11, 15]\
 [1, 5, 8, 12, 14, 19, 31]\
 \
 Output\
 [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19, 31]
 */
//: PRACTICE
let arr1 = [3, 4, 6, 10, 11, 15]
let arr2 = [1, 5, 8, 12, 14, 19, 31]

//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/MergeSortedArraysSolution.md)
func merge(_ arrOne: [Int], and arrTwo: [Int]) -> [Int] {
    var indexOne = 0
    var indexTwo = 0
    var sortedArr = [Int]()
    while indexOne < arrOne.count && indexTwo < arrTwo.count {
        if arrOne[indexOne] < arrTwo[indexTwo] {
            sortedArr.append(arrOne[indexOne])
            print(arrOne[indexOne])
            indexOne += 1
        } else {
            sortedArr.append(arrTwo[indexTwo])
            print(arrTwo[indexTwo])
            indexTwo += 1
        }
    }
    //Handle extra elements at the end.  One array will always be empty.
    return sortedArr + arrOne[indexOne...] + arrTwo[indexTwo...]
}
merge(arr1, and: arr2)
//: [Next](@next)
