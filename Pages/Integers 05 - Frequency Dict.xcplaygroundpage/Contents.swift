//: [Previous](@previous)
import Foundation
/*:
 # Integers
> Given a list of integers, i.e., {1, 1, 1, 1, 2, 2, 3, 3, 5}, count how many times a given integer occurs, e.g., {1, 4}, {2, 2}, {3, 2}, {5, 1}
 */
let intList = [1, 1, 1, 1, 2, 2, 3, 3, 5]

func countInts(in arr: [Int]) -> [Int:Int] {
    var freqDict = [Int:Int]()
    for num in arr {
        if freqDict[num] == nil {
            freqDict[num] = 1
        } else {
            freqDict[num] = freqDict[num, default: 0] + 1
        }
    }
    return freqDict
}

countInts(in: intList)
//: [Next](@next)
