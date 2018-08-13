//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 14 - Keypad
 ### Difficulty: Hard
 ### Tags: [Arrays]
 > Problem Description: A telephone keypad has letters associated with each number (e.g. 2 = abc, 3 = def). Given a passphrase of "fb1" (e.g. one that you might use to log into a bank account), come up with an algorithm that would assemble an array that contains all the different possible letter combinations that, when typed into a telephone dial pad, would be equivalent to the original passphrase. That is, "fb1" equals "321" numerically; matching equivalent combinations include: "da1", "db1", "dc1", "ea1", "eb1", "ec1", "fa1" and "fc1".
 - Example:
 Input\
 "ab"\
 \
 Output\
 ["aa", "ab", "ba", "bb"]
 */
//: PRACTICE


//: SOLUTION
//: [[C4Q - Izza]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/Keypad.md)
func phoneWords(numbers:[Int], letterMap: [Int : [String]]) -> [String] {
    print(numbers)
    var numbersCopy = numbers
    //base case
    if numbers.count == 1 {
        return letterMap[numbers.first!]!
    }
    let lettersToAdd = letterMap[numbersCopy.first!]
    numbersCopy.removeFirst()
    let smallerWords = phoneWords(numbers: numbersCopy, letterMap: letterMap)
    var words = [String]()
    for word in smallerWords {
        for letter in lettersToAdd! {
            words.append(letter + word)
        }
    }
    return words
}


//: [Next](@next)
