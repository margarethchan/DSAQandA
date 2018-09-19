//: [Previous](@previous)
import Foundation
//: # Strings
//: [[Realm Academy]](https://academy.realm.io/posts/daniel-steinberg-whats-new-in-swift-4/)
let source = "how now brown cow"
//: ## Enumerate characters in a String
/*:
 Formally, Strings are both **BidirectionalCollections** and **RangeReplaceableCollections**. This means that we don’t have to ask the *source* String for its Characters, we can just fast enumerate *source* directly and *c* is inferred to be a Character:
 */
var frequencies: [Character: Int] = [:]
for c in source {
    frequencies[c, default: 0] += 1
}
print(frequencies)
//: ## Character Index
/*:
 Because a String is a collection, we can also apply one sided ranges to a String. Here we find the index of a Character and use a one sided range to pull out the Characters prior to but not including that Character. This makes parsing Strings much nicer:
 */

if let bIndex = source.index(of: "b") {
    source[..<bIndex]
}

//: [Next](@next)
