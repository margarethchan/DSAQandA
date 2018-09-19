//: [Previous](@previous)
import Foundation
/*:
 # STACKS
 ## 21 - ValidParentheses
 ### Difficulty: Medium
 > Problem Description: You're working with an intern that keeps coming to you with code that won't run because the braces, brackets, and parentheses are off. To save you both some time, you decide to write a braces/brackets/parentheses validator. Let's say:
 '(', '{', '[' are called "openers."
 ')', '}', ']' are called "closers."
 > Write an efficient function that tells us whether or not an input string's openers and closers are properly nested.
 - Example:
 Input\
 "{ [ ] ( ) }"\
 Output\
 true\
 \
 Input\
 "{ [ ( ] ) }"\
 Output\
 false\
 \
 Input\
 "{ [ }"\
 Output\
 false
 */
//: PRACTICE

//: SOLUTION
//: [[Link]](https://moduscreate.com/blog/classes-and-structs-in-swift/)
/*:
 this stack is a struct because it uses 'mutating' on a var.
 \
 "Mutating functions are only present on structs and can only be used on structs created as a var."
 */
struct StackPractice<T> {
    private var arr: [T] = []
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.count == 0
    }
}

func isItBalanced(str: String) -> Bool {
    var stack = StackPractice<Character>()
    let openingChars = "([{"
    let closingChars = ")]}"
    for char in str {
        print(stack)
        if openingChars.contains(char) {
            stack.push(char)
        } else {
            guard let topChar = stack.pop() else { return false }
            if openingChars.index(of: topChar) != closingChars.index(of: char) { print("topChar: '\(topChar)', char: '\(char)'"); return false }
        }
    }
    return stack.isEmpty
}

let inputOpenClosed = "{()]}"
isItBalanced(str: inputOpenClosed)
//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/StackSolutions/BalancedParensSolution.md)
struct Stack<T> {
    private var arr: [T] = []
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.count == 0
    }
}

extension Character {
    func isClosed(by c: Character) -> Bool {
        switch self {
        case "(":
            return c == ")"
        case "{":
            return c == "}"
        case "[":
            return c == "]"
        default:
            return false
        }
    }
}

func isBalanced(str: String) -> Bool {
    var stack = Stack<Character>()
    let openingChars = "([{"
    for char in str {
        if openingChars.contains(char) {
            stack.push(char)
        } else {
            guard let topChar = stack.pop() else { return false }
            if !topChar.isClosed(by: char) { return false }
        }
    }
    return stack.isEmpty
}

let inputOpenClose = "{(}"
isBalanced(str: inputOpenClose)


//: [Next](@next)
