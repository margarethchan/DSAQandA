//: [Previous](@previous)
import Foundation
//: # Dictionary
//: ## mapValues
let numbers = ["one": 1, "two": 2, "three": 3, "four": 4]
/*:
 Dictionary has a new method named mapValues that applies the closure to the values while keeping the values together with their keys.
 */
let increaseValueByOne = numbers.mapValues {$0 + 1 }
// ["three": 4, "four": 5, "one": 2, "two": 3]
print("increaseValueByOne: \(increaseValueByOne)\n------------")

//: [Next](@next)
