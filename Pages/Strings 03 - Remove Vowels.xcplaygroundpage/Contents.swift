//: [Previous](@previous)
import Foundation
/*:
 # STRINGS
 ## 24 - RemoveVowels
 ### Difficulty: Easy
 ### Tags: [Strings]
 > Problem Description: Given a string as input, return a new string with all the vowels removed. Count "y" as a vowel.
 - Example:
 Input\
 "These are the voyages of the starship Enterprise"\
 Output\
 "Ths r th vgs f th strshp ntrprs"
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/StringSolutions/RemoveVowelsSolution.md)
let vowelInput = "These are the voyages of the starship Enterprise"

func removeVowels(from str: String) -> String {
    let vowels = "aeiouy"
    return str.lowercased().filter{!vowels.contains($0)}
}
removeVowels(from: vowelInput)

//: SOLUTION
func noVowels(in str: String) -> String {
    let vowels = "aeiouy"
    var noVowelsStr = ""
    for char in str.lowercased() {
        if !vowels.contains(char) {
            noVowelsStr.append(char)
        }
    }
    return noVowelsStr
}
noVowels(in: vowelInput)

//: [Next](@next)
