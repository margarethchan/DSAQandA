//: [Previous](@previous)
import Foundation
/*:
 # Linked Lists
 ## C4Q/Pursuit Advanced DSA Workshop 9/19/2018
 ### Session lead by Erty Seidohl from Managed by Q
 */
/*:
 _What does the symbol '=' really mean for a computer?_
 
 What is a **Linked List**?
 - A *series* of *nodes*
 
 What is a **node**?
 - Holds a *value*
 
 What is a **value**?
 - A number, string, bool, double
 
 What is a **series**?
 - An ordered list
 - Each node points to the next node in the list
 
 Why use **Linked Lists** instead of **Array**?
 - *Removing an element* from an Array is O(n) instead of O(1)
 - *Removing a node* in a LL just moves the pointer from the previous node to the next node after the one removed.

 How much **memory** do you need for an array?
 - Memory is *contiguous* (all together) in an array
 - Adding an element will need to copy the entire array and find a larger space to store it with the added element
 - Adding an element to a LL just requires a new pointer coming from the tail
 
 Singly Linked List
 - head
 - next
 - tail
 
 Doubly Linked List
 - head
 - next
 - **previous**
 - tail
 
 To store a reference to a Linked List, store a reference to the **Head** node.
 
 The **pointer** points to the *address in memory* of the next node.
 
 Why is looping over an array faster than a LL?
 - LL is slower because of *random access memory* where you need to jump to each scattered node address in memory before you find the value you want
 - An array has *contiguous* storage in memory, which gets loaded on CPU memory in "pages" where all the values will be together.
 - A LL may have node values across multiple "pages" in memory that will take longer to search through
 */
var a = 3
/*:
 - Memory is allocated for a value named "a"
 - "a" is an address with a value of 3
 
 How does the computer know how much memory to allocate?
 - Typed languages like Swift are clear in the size of the data type (bits/bytes etc)
 
 How do we know what data type a value is?
 - Data type inference/annotation
 - Either at compile time when it sees the value it infers its type,
 - or it builds a data structure around the value (?)
 */
var b = a
/*:
 - "a" is an address
 - "b" is pointing to the address of "a"
 */
a = 5
/*:
 When a is reassigned, "b" is still pointing to the previous address in memory of "a"
 */

/*:
 ### The "=" symbol operates specifically on either side
 - On **left**, always a *pointer*
 - On **right**, always a *value*
 
 When a pointer is assigned to a **second** pointer, it is really assigned to the *value* at that second pointer
 
 *Follow* the pointer on the right
 
 *Move* the pointer on the left
 
 A Pointer is a memory address
 */

/*:
 Linked List Class pseudo code:

    class Node {
        Node next
        Node prev
        Any value
    }

Creating a Doubly Linked List:
 
    var a = newNode('aaa')
    var b = newNode('bbb')
    var c = newNode('ccc')
    a.next = b
    b.prev = a
    b.next = c
    c.prev = b
*/
/*:
 Problem 1: Create a function/method that deletes a node from a Linked List
 
    func delete(node) -> removes node from LL {
    }
 */


/*:
 Problem 2: Swap each pair of elements in a Linked List, keep the odd value at the end if any
 
    Start: a -> b - > c -> d -> e
    End with: b -> a -> d -> c -> e
 */


/*:
 Problem 3: Attempt #2 with a singly linked list which only moves forward
*/


//: [Next](@next)
