//: [Previous](@previous)
import Foundation
/*:
 # STRINGS
 ## 26 - Pattern Match
 ### Difficulty:Easy
 ### Tags: [Arrays, Strings, Dictionaries]
 > Write a func that takes in a pattern and string of words and returns whether the words appear in the order of the pattern.
 - Example:
 Input\
 "ece", "apple banana apple"\
 Output\
 true\
 \
 Input\
 "fff", "can bag dog"\
 Output\
 false
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/StringSolutions/PatternMatchSolution.md)
func match(pattern: String, str: String) -> Bool {
    let words = str.components(separatedBy: " ")
    let patternChars = pattern.map{$0}
    var dict = [Character: String]()
    guard patternChars.count == words.count else { return false }
    for index in 0..<words.count {
        let patternChar = patternChars[index]
        let word = words[index]
        if let patternWord = dict[patternChar] {
            if word != patternWord { return false }
        } else {
            dict[patternChar] = word
        }
    }
    return true
}

//: [Next](@next)
