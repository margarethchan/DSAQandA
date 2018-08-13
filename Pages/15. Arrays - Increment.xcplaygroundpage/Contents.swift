//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ### Difficulty: Hard
 ### Tags: [Arrays]
 Given a number as an array(ex: 143 as [1,4,3]). How would I write a function that would increment it.
 - Example:
 143 is [1,4,3]
 Increment to 144
 */
let numArray = [9,9,9]
//: PRACTICE
func increment(numAsArray: [Int]) -> [Int] {
    var numArrString = numAsArray.map{String($0)} // 1
    var numInt = Int(numArrString.joined(separator: ""))! // 2
    numInt += 1 // 3
    return String(numInt).compactMap{Int(String($0))} // 4
}
increment(numAsArray: numArray)

// 1 convert each Int digit to a String array
// 2 join each digit String into one string & convert the whole thing to an Int called numInt
// 3 increment numInt
// 4 convert the numInt to a string,
// 4 create an Array with each Character
// 4 convert each Character to an Int

/// Practice with .flatMap()

print("string".compactMap{String($0)})

//: [Next](@next)
