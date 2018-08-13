//: [Previous](@previous)
import Foundation
/*:
 # LINKED LISTS
 [[PluralSight]](https://www.pluralsight.com/guides/data-structures-in-swift-part-2)
 
 Linked lists are collections of data made of nodes that store a value and a pointer to the next node in the chain. Unlike arrays, linked lists do not allocate fixed amounts of memory in advance to store items. Instead, the items in a linked list are separate instances. Each block in the linked list is usually called node and gets added when needed.
 
 ## 19 - SwapNodes
 ### Difficulty: Medium
 ### Tags: [Linked Lists]
 > Problem Description: Given the head node of a singly linked list, swap each pair of nodes and return the head. If there is a last odd node leave it in place.
 - Example:
 Input\
 1 -> 2 -> 3 -> 4 -> 5\
 Output\
 2 -> 1 -> 4 -> 3 -> 5
 */

//Definition for singly-linked list.
class Node<T> {
    var key: T
    var next: Node<T>?
    init(key: T) {
        self.key = key
    }
}

//: PRACTICE




//: SOLUTION
//: [[C4Q - Diego]](https://github.com/C4Q/AC-DSA/blob/master/LinkedListSolutions/SwapNodesSolution.md)
struct LinkedList<T> {
    var head: Node<T>?
    
    init(head: Node<T>) {
        self.head = head
    }
    
    func printOut() {
        var str = ""
        var currentNode = self.head
        while currentNode != nil {
            str += "\(currentNode!.key) --> "
            currentNode = currentNode!.next
        }
        str += "nil"
        print(str)
    }
    mutating func reverseInGroups(node: Node<T>? = nil, previousTail: Node<T>? = nil, groupedBy num: Int = 2, isFirst: Bool = true) {
        var current = node ?? head
        let prevTail = current
        var prev: Node<T>?
        var next: Node<T>?
        
        var count = 0
        
        while current != nil && count < num {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
            count += 1
        }
        previousTail?.next = prev
        if next != nil {
            self.reverseInGroups(node: next, previousTail: prevTail, groupedBy: num, isFirst: false)
        }
        if isFirst {self.head = prev}
    }
}

//: MY SOLUTION
let list = Node<Int>(key: 1)
list.next = Node(key: 2)
list.next?.next = Node(key: 3)
list.next?.next?.next = Node(key: 4)
list.next?.next?.next?.next = Node(key: 5)

let nodeOne = Node(key: 1)
let nodeTwo = Node(key: 2)
let nodeThree = Node(key: 3)
let nodeFour = Node(key: 4)
let nodeFive = Node(key: 5)
nodeOne.next = nodeTwo
nodeTwo.next = nodeThree
nodeThree.next = nodeFour
nodeFour.next = nodeFive

print(nodeOne.key,
      nodeOne.next!.key,
      nodeOne.next!.next!.key,
      nodeOne.next!.next!.next!.key,
      nodeOne.next!.next!.next!.next!.key)

var myNewList = LinkedList.init(head: nodeOne)
myNewList.printOut()
myNewList.reverseInGroups()

print(myNewList.head!.key,
      myNewList.head!.next!.key,
      myNewList.head!.next!.next!.key,
      myNewList.head!.next!.next!.next!.key,
      myNewList.head!.next!.next!.next!.next!.key)

//: [Next](@next)
