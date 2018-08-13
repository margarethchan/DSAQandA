//: [Previous](@previous)
import Foundation
//: # reduce()
//: ## Ints
let numbers = Array(1...100)
//: ### Combine all elements in Array to make one single value.
let sumOfNumbers = numbers.reduce(0,{$0 + $1})
sumOfNumbers
//: ### Combine all elements in numbers Array to make one single value String
let stringOfNumbers = numbers.reduce("", {String($0) + String($1)})
stringOfNumbers
//: ## Strings
let name: [String] = ["jon snow", "Arya Stark", "Jamie Lanniester", "Sansa Stark", "Renly Barathon", "Catelen Stark", "Theon Grayjoy", "Ned Stark"]
//: ### Combine all elements in String Array to make one single String value
let nameString = name.reduce("", {$0 + $1.replacingOccurrences(of: " ", with: "")})
nameString
//: ### Count all the characters in an array
let nameArrayCharactersCount = name.reduce(0, {$0 + $1.count})
nameArrayCharactersCount
//: ### Find Longest Name
let longestname = name.reduce("", {$0.count > $1.count ? $0 : $1 } )
longestname

//: [Next](@next)
