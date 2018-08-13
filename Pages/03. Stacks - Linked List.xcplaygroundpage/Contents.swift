//: [Previous](@previous)
import Foundation
/*:
 # STACKS
 ## Linked List
 ## (instead of Array data structure)
*/

class Node<T> {
    let value: T
    var next: Node?
    init(value: T) {
        self.value = value
    }
}
/*:
 this stack is a *class* because it doesn't uses 'mutating' on a var
 \
 "Mutating functions are only present on structs and can only be used on structs created as a var." [[Link]](https://moduscreate.com/blog/classes-and-structs-in-swift/)
 */
class Stack<T> {
    var top: Node<T>?
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    func peek() -> T? {
        return top?.value
    }
}
//: An Int Stack
let intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
intStack.push(3)

let firstPop = intStack.pop()
let secondPop = intStack.pop()
let thirdPop = intStack.pop()

//: A User object Stack
struct User {
    let name: String
    let userName: String
}

let me = User(name: "Maggie", userName: "@maggie")
let you = User(name: "You", userName: "@you")

let userStack = Stack<User>()
userStack.push(me)
userStack.push(you)

let firstUserPop = userStack.pop()
print(firstUserPop ?? "")

//: [Next](@next)
