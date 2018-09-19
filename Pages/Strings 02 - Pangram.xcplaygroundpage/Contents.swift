//: [Previous](@previous)
import Foundation
/*:
 # STRINGS
 ## 23 - Pangram
 ### Difficulty: Easy
 ### Tags: [Strings]
 > Problem Description: Determine if a given string has all the letters in the English alphabet in it.
 - Example:
 Input\
 The quick brown fox jumps over the lazy dog\
 Output\
 true\
 \
 Input\
 Four square and seven years ago\
 Output\
 false
 */
//: PRACTICE



//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/StringSolutions/PangramSolution.md)
func isPangram(str: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    return Set(str.lowercased().filter{alphabet.contains($0)}).count == alphabet.count
}


//: [Next](@next)
