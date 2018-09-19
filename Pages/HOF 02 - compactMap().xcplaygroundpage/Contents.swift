//: [Previous](@previous)
import Foundation
//: # compactMap()
//: ## Strings
let place: [String?] = ["winterfell", "highgarden", "Vale", "iron islands", "essos", "andalos"]
//: ### .map() does not handle the optionals
let printValue = place.map{$0}
print("printValue: \(printValue)")
//: ### .compactMap() removes optionals
let compactMapValue = place.compactMap{$0}
// here the optionals are removed
print("compactMapValue: \(compactMapValue)")
//: ### .compactMap() removes nils
let arrayWithNil:[String?] = ["eleven", nil , "demogorgon", nil , "max", nil, "lucus", nil, "dustin"]
let filteredNilArray = arrayWithNil.compactMap{$0}
filteredNilArray
//: ### .compactMap() converts optionals
let numArray:[String] = ["45", "60", "75", "something random error", "15", "Another Error"]
let integerArray:[Int] = numArray.compactMap{Int($0)}
integerArray

//: [Next](@next)
