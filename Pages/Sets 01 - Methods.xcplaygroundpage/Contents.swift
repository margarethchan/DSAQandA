//: [Previous](@previous)
import Foundation
//: # Sets
//: Sets are collection types that store values in no order with no repeating values.
var set1: Set<Int> = [1,2,3,4,5]
var set2: Set<Int> = [4,6,8,9,2,1]
//: ## .union()
//: `.union()` combines the values of two sets of the same type
let union = set1.union(set2)
//: ## .intersection()
//: `.intersection()` returns values existing in both of two sets
let intersection = set1.intersection(set2)
//: ## .symmetricDifference()
//: `.symmetricDifference()` returns values that only exist in one of the two sets
let symDiff = set1.symmetricDifference(set2)
//: ## .subtract()
//: `.subtracting()` returns values in first set that are not in second set
let subtracting = set1.subtracting(set2)
//: ## .insert()
//: `.insert()` will add a value to a Set
set1.insert(8)
//: ## .remove()
//: `.remove()` will remove a value from a Set if it exists. Otherwise will have no effect.
set2.remove(6)
set2.remove(5)

//: [Next](@next)
