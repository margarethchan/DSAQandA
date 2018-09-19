//: [Previous](@previous)
import Foundation
/*:
 # Quick Sort
[[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/Sorting/nLognSorts)
 
 Here's how it works:
 
 * 1. If the array has only one element, return it.
 * 2. Find the middle element of the array and name it pivot.
 * 3. Move all the elements smaller than the pivot into an array called less.
 * 4. Move all the elements equal to the pivot into an array called equal.
 * 5. Move all the elements greater than the pivot into an array called greater.
 * 6. Return the following: \
This function passing in less as input + equal + this function passing in greater as input.
 */
/*:
  - Example:
 var arr1 = [8,4,2]
    1. Skip this step as arr1 has 3 elements.
    2. pivot = 4
    3. less = [2]
    4. equal = [4]
    5. greater = [8]
    6. return quicksort([2]) + [4] + quicksort([8])
 \
 \
quicksort([2]) and quicksort([4]) hit the basecase in step one and return the input. Therefore, the function returns [2,4,8]
 */
/*:
- Example:
 var arr2 = [11,8,15,10,4,14,2]
     1. Skip this step as arr2 has 7 elements.
     2. pivot = 10
     3. less = [8,4,2]
     4. equal = [10]
     5. greater = [10,15,14]
     6. return quicksort([8,4,2]) + [10] + quicksort([11,15,14])

     **quicksort([8,4,2])** = [2,4,8] as we saw in example one
 
     **quicksort([11,15,14])** :
     1. Skip this step as the array has 3 elements
     2. pivot = 15
     3. less = [11,14]
     4. equal = [15]
     5. greater = []
     6. return quicksort([11,14]) + [15] + []

 
     **quicksort(11,14)** :
     1. Skip this step as the array has 2 elements
     2. pivot = 11
     3. less = []
     4. equal = [11]
     5. greater = [14]
     6. return [] + [11] + [14] = [11,14]
 \
 \
Therefore, quicksort([11,15,14]) = [11,14,15]\
\
And so quicksort([8,4,2]) + [10] + quicksort([11,15,14]) = [2,4,8,10,11,14,15]
 */
func quickSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else {return arr} //base case // 1
    let pivot = arr[arr.count / 2] // 2
    var lessThanPivot = [Int]() // 3
    var equalToPivot = [Int]() // 4
    var greaterThanPivot = [Int]() // 5
    for element in arr {
        if element < pivot {
            lessThanPivot.append(element)
        } else if element > pivot {
            greaterThanPivot.append(element)
        } else {
            equalToPivot.append(element)
        }
    }
    print("\(arr) with pivot: \(pivot)")
    print("sort(\(lessThanPivot)) + \(equalToPivot) + sort(\(greaterThanPivot))")
    print()
    return quickSort(arr: lessThanPivot) + equalToPivot + quickSort(arr: greaterThanPivot) //recursive call // 6
}

var arr2 = [11,8,15,10,4,14,2]

quickSort(arr: arr2)

//: [Next](@next)
