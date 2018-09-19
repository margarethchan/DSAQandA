//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 2 - FindRepeats
 ### Difficulty: Easy
 ### Tags: [Arrays, Integers, Duplicates, Frequency Dictionaries]
 > Problem Description:  Find all elements in an array that appear more than once.
 - Example:
 Input\
 [1, 4, -2, -9, 2, -2, 1, 10, 4]\
 Output\
 [1, -2, 4]
 */
let repeatsInput = [1, 4, -2, -9, 2, -2, 1, 10, 4]
//: PRACTICE
func findDupes(from arr: [Int]) -> [Int] {
    var singles: [Int] = []
    var dupes: [Int] = []
    for num in arr {
        if !singles.contains(num) {
            singles.append(num)
        } else {
            dupes.append(num)
        }
    }
    return dupes
}
findDupes(from: repeatsInput)
//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/FindRepeatsSolution.md)
func findRepeats(in arr: [Int]) -> [Int] {
    var frequencyDict = [Int: Int]()
    for num in arr {
        frequencyDict[num, default: 0] += 1
    }
    return Array(frequencyDict.filter{$0.value > 1}.keys)
}
findRepeats(in: repeatsInput)

// create a frequency table / dictionary
// iterate through each element in the array
// add a key-value tuple entry to the dictionary
// using the element as the key
// and setting the starting default value of 0
// and adding 1 to the value for each instance of the element
// return an array containing the keys(elements) of the entries in the dictionary
// that have frequency values greater than 1
// which indicate duplicate instances in the array
//: ANOTHER SOLUTION
//: [[HackingWithSwift]](https://www.hackingwithswift.com/example-code/language/how-to-count-element-frequencies-in-an-array)
func findTheRepeats(in arr: [Int]) -> [Int] {
    let mappedNums = arr.map{($0,1)}
    let numDict = Dictionary(mappedNums, uniquingKeysWith: +)
    return Array(numDict.filter{$0.value > 1}.keys)
}
findTheRepeats(in: repeatsInput)

// convert to an array of key-value pairs using tuples, where each value is the number 1
// create a Dictionary from that tuple array, asking it to add the 1s together every time it finds a duplicate key
//: ANOTHER SOLUTION
//: [[Reddit]](https://www.reddit.com/r/swift/comments/9358u4/help_function_to_create_number_frequency/)
func redditDupes(in arr: [Int]) -> [Int] {
    let dupesDict = Dictionary(arr.map{($0, 1)}) {$0 + $1}
    return Array(dupesDict.filter{$0.value > 1}.keys)
}
redditDupes(in: repeatsInput)

//: ANOTHER SOLUTION
//: [[Reddit]](https://www.reddit.com/r/swift/comments/9358u4/help_function_to_create_number_frequency/)
func redditDupesAnother(in arr: [Int]) -> [Int] {
    let dupesDict = arr.reduce(into: [:]) { $0[$1, default:0] += 1 }
    return Array(dupesDict.filter{$0.value > 1}.keys)
}
redditDupesAnother(in: repeatsInput)

// iterate over numbers
// creating an empty Dictionary to hold results
// read the key $1 in the dictionary $0
// if the key doesn't already exist add it to the Dictionary with a default value of 0
// then add 1 to the current value and save it in the Dictionary
//: [Next](@next)
