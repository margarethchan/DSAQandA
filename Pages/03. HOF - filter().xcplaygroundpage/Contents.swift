//: [Previous](@previous)
import Foundation
//: # filter()
//: ## Ints
let numbers = Array(1...100)
//: ### Filter by a condition
let evenNumbers = numbers.filter{ $0 % 2 == 0 }
evenNumbers
//: ## Strings
let name: [String] = ["jon snow", "Arya Stark", "Jamie Lanniester", "Sansa Stark", "Renly Barathon", "Catelen Stark", "Theon Grayjoy", "Ned Stark"]
//: ### Filter to check for string Value
let starkFamily = name.filter{$0.hasSuffix("Stark")}
starkFamily
//: ### Filter out names longer than 10 characters
let arrayWith_min_10_char = name.filter{ $0.count > 10}
arrayWith_min_10_char

//: [Next](@next)
