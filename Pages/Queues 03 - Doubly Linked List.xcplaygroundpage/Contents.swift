//: [Previous](@previous)
import Foundation
//: # Queues
/*:
 ## Implementing a Queue using a (Doubly-Linked) Linked List
 [[Ray Wenderlich - Queues]](https://www.raywenderlich.com/848-swift-algorithm-club-swift-queue-data-structure)
 [[Ray Wenderlich - Linked Lists]](https://www.raywenderlich.com/947-swift-algorithm-club-swift-linked-list-data-structure)
 */
/*:
 ### Create the Node class
Declare a property named value of generic type

In addition to a value, each node needs a pointer to the next node in the list. Declare a property named `next` of type `Node`. Note that you’ve made next an optional. This is because the last node in the linked list does not point to another node.
 
You are implementing a doubly-linked list so we also need a pointer to the previous node in the list.

Declare an initializer, which is required for initializing all non-optional stored properties for your class.
 */
public class Node<T> {
    public var value: T
    public var next: Node<T>?
    public var previous: Node<T>?
    public init(value: T) {
        self.value = value
    }
}
/*:
### Create Linked List
This struct will keep track of where the list begins and ends. It will also provide a number of other helper functions.
*/
public struct LinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    public init() { }
    public var isEmpty: Bool {
        return head == nil
    }
    public var first: Node<T>? {
        return head
    }
    public var last: Node<T>? {
        return tail
    }

    /// Append to the Linked List
    // 1. Create a new Node to contain the value. Remember, the purpose of the Node class is so that each item in the linked list can point to the previous and next node.
    // 2. If tailNode is not nil, that means there is something in the linked list already.
    // 3. If that’s the case, configure the new item to point to the tail of the list as it’s previous item.
    // 4. Similarly, configure the new last item on the list to point to the new node as it’s next item.
    // 5. Finally, set the tail of the list to be the new item in either case.
    
    public mutating func append(_ value: T) {
        let newNode = Node(value: value) // 1
        if let tailNode = tail { // 2
            newNode.previous = tailNode // 3
            tailNode.next = newNode // 4
        } else {
            head = newNode
        }
        tail = newNode // 5
    }
    
    /// Remove individual Nodes
    // 1. Update the next pointer if you are not removing the first node in the list.
    // 2. Update the head pointer if you are removing the first node in the list.
    // 3. Update the previous pointer to the previous pointer of the deleted node.
    // 4. Update the tail if you are removing the last node in the list.
    // 5. Assign nil to the removed nodes previous and next pointers.
    // 6. Return the value for the removed node.
    
    public mutating func remove(_ node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next
        if let prev = prev {
            prev.next = next // 1
        } else {
            head = next // 2
        }
        next?.previous = prev // 3
        if next == nil {
            tail = prev // 4
        }
        node.previous = nil // 5
        node.next = nil
        return node.value // 6
    }
    
    /// Removing All Nodes
    public mutating func removeAll() {
        head = nil
        tail = nil
    }
    
    /// Accessing Nodes by Index
    // 1. Add a check that the specified index is not negative. This prevents an infinite loop if the index is a negative value.
    // 2. Loop through the nodes until you reach the node at the specified index and return the node.
    // 3. If the index less than 0 or greater than the number of items in the list, then return nil.
    
    public func nodeAt(index: Int) -> Node<T>? {
        if index >= 0 { // 1
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node } // 2
                i -= 1
                node = node!.next
            }
        }
        return nil // 3
    }
}

/// Printing the Linked List
// To display a more readable output string, you can make LinkedList adopt the CustomStringConvertable protocol.
// 1. Declare an extension to your LinkedList class and adopt the CustomStringConvertible protocol. This protocol expects you to implement a computed property with the name description, with the String type.
// 2. Declare the description property. This is a computed property, a read only property that returns a String.
// 3. Declare a text variable. This will hold the entire string. For now, it contains an opening brace to represent the start of the list.
// 4. Loop through the list, appending the value of each item to the text string.
// 5. You add a closing brace to the end of the text variable.

extension LinkedList: CustomStringConvertible { // 1
    public var description: String { // 2
        var text = "[" // 3
        var node = head
        while node != nil { // 4
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]" // 5
    }
}

//: ### Generic Queue

struct Queue<T> {
    private var list = LinkedList<T>()
    var isEmpty: Bool {
        return list.isEmpty
    }
    mutating func enqueue(_ element: T) {
        list.append(element)
    }
    mutating func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else { return nil }
        list.remove(element)
        return element.value
    }
    func peek() -> T? {
        return list.first?.value
    }
}

//: > Exercise: Print all the elements in a Queue.
var rayQueue = Queue<String>()
rayQueue.enqueue("Hello")
rayQueue.enqueue("My")
rayQueue.enqueue("Name")
rayQueue.enqueue("Is")
rayQueue.enqueue("Ray")

func printElements(in queue: Queue<String>) {
    var q = queue
    while !q.isEmpty {
        print(q.dequeue()!)
    }
}
printElements(in: rayQueue)
//: [Next](@next)
