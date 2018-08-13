//: [Previous](@previous)
import Foundation
//: # Queues
/*:
 ## Implementing a Queue using a (Singley-Linked) Linked List
 [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/Queues)
 
 A more standard implementation of a queue is using a linked list (as opposed to an array).
 
 A queue follows Last In, First Out order.

 1. A Node class will keep track of where the *next* node in the Linked List is and its *value*.
 
 2. We will need to keep track of both the *head* and the *tail* of our linked list.
 
 3. When we **enqueue**, we will add something to end and reset the tail to it.
 
 4. When we **dequeue**, we will move the head one node forwards and return the old head value.
 
 An **empty** queue will be represented by having both the head and the tail be nil.
 */
/// Create Linked List Node

class LLNode<Key> { // 1
    let val: Key
    var next: LLNode?
    init(val: Key) {
        self.val = val
    }
}
/// Generic Queue
struct Queue<T> { // 2
    private var head: LLNode<T>?
    private var tail: LLNode<T>?
    var isEmpty: Bool { // 4
        return head == nil
    }
    mutating func enQueue(_ newElement: T) { // 3
        let newNode = LLNode(val: newElement)
        guard let tail = tail else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail.next = newNode
        self.tail = newNode
    }
    mutating func deQueue() -> T? { // 4
        guard let oldHead = head else {
            return nil
        }
        self.head = oldHead.next
        if oldHead.next == nil {
            self.tail = nil
        }
        return oldHead.val
    }
    func peek() -> T? {
        return self.head?.val
    }
}

//: > Exercise: Print all the elements in a Queue.
var myQueue = Queue<String>()
myQueue.enQueue("Hello")
myQueue.enQueue("My")
myQueue.enQueue("Name")
myQueue.enQueue("Is")
myQueue.enQueue("Maggie")

func printElements(in queue: Queue<String>) {
    var q = queue
    while !q.isEmpty {
       print(q.deQueue()!)
    }
}
printElements(in: myQueue)
//: [Next](@next)
