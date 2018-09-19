//: [Previous](@previous)
import Foundation
//: # Queues
/*:
## Implementing a Queue using an Array
 [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/Queues)
 
**Not best practice**: in this example,  dequeueing is a linear operation. (We'll need to shift everything in the array back to the left to fill in any gaps.)
 
The code below creates a Queue where we enqueue by appending to the Array, and dequeue by removing the first element.
 Queues follow First In, First Out protocol.

 */
struct Queue<T> {
    private var arr: [T] = []
    mutating func enqueue(_ newElement: T) {
        arr.append(newElement)
    }
    func peek() -> T? {
        return arr.first
    }
    mutating func dequeue() -> T? {
        return arr.removeFirst()
    }
    var isEmpty: Bool {
        return arr.count == 0
    }
}

var queueInt = Queue<Int>()
queueInt.enqueue(1) // appends value
queueInt.enqueue(2) // appends value
queueInt.enqueue(3) // appends value
print(queueInt)
queueInt.peek() // shows first value
queueInt.dequeue() // removes first value
print(queueInt)

//: [Next](@next)
