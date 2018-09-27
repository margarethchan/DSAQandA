//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
/*:
 Trees and Recursion
 */


/*:
 # Recursion
 Why do we learn it if it's not implemented often?
 - Because it is always asked in technical interviews!
 
 Why do we use recursion?
 - Efficiency
 - Better readability
 - Sometimes easier to write than iterative code
 
 What recursive algorithms have we learned?
 - Fibonacci sequence
 - Factorial
 - Counting vowels in a string (also easy iteratively)
 
 What are some recursive data structures? (Nodes that point to other nodes)
 - Linked Lists
 - Trees
 - Graphs
 */

/*:
 # Trees
 A tree is a grouping of nodes where there is a parent-child relationship. Each node child has one parent.

 The root of a tree doesn't have to exist within the tree. The root can just be a pointer to the tree.
 
     class Node {
            value: any
            left: Node
            right: Node
     }
 
 Every *node* of a tree is a **tree**.
 
 */

//: Sum the numbers of an array(list).
//: If the array has one element.

//let myList = [3,5]
//
//func sumUp(arr: [Int]) -> Int {
//    if arr.count == 1 {
//        return arr[0]
//    } else {
//        return arr[0] + sumUp(arr: Array(arr[1...]))
//    }
//}
//
//print(sumUp(arr: myList))

/*: Inductive leap
 - Solve the base case (what do you need to end the loops)
 - Given the *n*th case, solve the *n* + 1th case
 
 */
var myArrays = [[3,5],[[7]]]
// sum all values in myArrays

//func sumThisUp(arr: [Int]) -> Int {
//    if arr.count == 0 {
//        return 0
//    }
//    if arr[0].isArray() { // pseudo code check if the first element in an array is an array
//        return sumThisUp(arr[0]) + sumThisUp(arr: arr[1...])
//    } else {
//        return arr[0] + sumThisUp(arr: arr[1...])
//    }
//}



/*:
 ## Tree Recursion
 > Find Bottom left node
 */

//func bottomLeft(node: Node) -> Node {
//    if(node.left == nil) {
//        return node
//    } else {
//        return bottomLeft(node: node.left)
//    }
//}

/*:
 ## Problem 2: Write a recursive function `findMaxDepth(node: Node)` which takes in a tee node reference and returns the "max dept" of the tree. For example, given the tree from problem 1, you should return 3 (the depth of node G, note that A has a depth of 0).
 */

class Node <T>{
    var value: T
    var left: Node?
    var right: Node?
    init(value: T) {
        self.value = value
    }
}

let root = Node(value: "A")
let nodeTwo = Node(value: "B")
let nodeThree = Node(value: "C")
let nodeFour = Node(value: "D")
let nodeFive = Node(value: "E")
let nodeSix = Node(value: "F")
let nodeSeven = Node(value: "G")

root.left = nodeTwo
root.right = nodeThree
nodeTwo.left = nodeFour
nodeTwo.right = nodeFive
nodeThree.right = nodeSix
nodeFour.left = nodeSeven

func findMaxDepth(node: Node<Int>) -> Int {
    var leftDepth = 0
    var rightDepth = 0
    if node.left == nil && node.right == nil {
        return 0
    }
    if node.left != nil {
        leftDepth = 1 + findMaxDepth(node: node.left!)
    }
    if node.right != nil {
        rightDepth = 1 + findMaxDepth(node: node.right!)
    }
    return leftDepth > rightDepth ? leftDepth : rightDepth
}


//findMaxDepth(node: root)

let root2 = Node(value: 1)
let nodeTwo2 = Node(value: 2)
let nodeThree2 = Node(value: 3)
let nodeFour2 = Node(value: 4)
let nodeFive2 = Node(value: 5)

root2.left = nodeTwo2
root2.right = nodeThree2
nodeTwo2.left = nodeFour2
nodeTwo2.right = nodeFive2

findMaxDepth(node: root2)


//:  > Question 1
/// Incomplete

//func inOrderPrint(node: Node<String>) {
//    if node.left == nil && node.right == nil {
//        print(node.value)
//    }
//    if node.left != nil {
////        print(node.value)
//        inOrderPrint(node: node.left!)
//    }
//    if node.right != nil {
//////        print(node.value)
//        inOrderPrint(node: node.right!)
//    }
////    if node.left == nil {
////        inOrderPrint(node: node.left!)
////        print(node.value)
////    }
//    
//}
//
//inOrderPrint(node: root)
//: [Next](@next)
