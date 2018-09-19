//: [Previous](@previous)
import Foundation
//: # sorted()
//: ## Ints
let randomNumbers:[Int] = [1 ,3,45,6743,4673,435,4162,6657,2431,658,686,56,3456,8875,325,46,2,66537,6]
//: ### Rearrange elements in an array in order
let sortednumber = randomNumbers.sorted()
//: ### Sort by evens first
let evenFirstSorted = randomNumbers.sorted { (a, b) -> Bool in
    return a % 2 == 0
}
evenFirstSorted
//: ### Sort by ascending or descending
let greaterThanArray = randomNumbers.sorted(by: >)
let lesserThanArray = randomNumbers.sorted(by: <)
//: ## Characters
let alphabets:[Character] = ["V", "I", "S", "H", "W", "A", "S", "v", "i", "s", "h", "w", "a", "s"]
//: ### Rearrange elements in an array in order by ASCII Value
let sortedAlphabets = alphabets.sorted()
//: [Next](@next)
