//: [Previous](@previous)
import Foundation
//: # Dictionary
//: ## grouping
struct Object {
    let name: String
    let quantity: Int
}
let things = [
    Object(name: "paperclip", quantity: 7),
    Object(name: "stapler", quantity: 1),
    Object(name: "rubber band", quantity: 20),
    Object(name: "post-it", quantity: 10)
]
//: ## Implementation
//: ### Create an array of thing tuples: (name, quantity)
let tupleObjects = things.map{($0.name, $0.quantity)}
print("tupleObjects: \(tupleObjects)\n------------")
//: ### Create a dictionary from an array of tuples
let tupleDict = Dictionary(uniqueKeysWithValues: tupleObjects)
print("tupleDict: \(tupleDict)\n------------")
//: ### Create a dictionary grouped by first letter of object name
let groupedDictionary = Dictionary(grouping: tupleDict.keys, by: { $0.first! })
// note: .characters is deprecated
print("groupedDictionary: \(groupedDictionary)\n------------")
//: [Next](@next)
