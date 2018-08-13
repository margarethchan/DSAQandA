//: [Previous](@previous)
import Foundation
/*:
 # STACKS
 ## 20 - LargestElementInStack
 ### Difficulty: Easy
 ### Tags: [Stacks]
 > Problem Description: Find the largest element in a stack.
 - Example:
 Input\
 1\
 4\
 -2\
 -9\
 3\
 \
 Output\
 4
 */

//: PRACTICE



//: SOLUTION: Generic Stack
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/StackSolutions/Largest%20Element%20Solution.md)

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

func largestElement<T: Comparable>(in stack: Stack<T>) -> T? {
    guard !stack.isEmpty else { return nil }
    var stack = stack
    var largestElementSoFar = stack.pop()!
    while !stack.isEmpty {
        let currentElement = stack.pop()!
        if currentElement > largestElementSoFar {
            largestElementSoFar = currentElement
        }
    }
    return largestElementSoFar
}


var stackInt = Stack<Int>()
stackInt.push(1)
stackInt.push(4)
stackInt.push(-2)
stackInt.push(-9)
stackInt.push(3)

largestElement(in: stackInt)
//: [Next](@next)
