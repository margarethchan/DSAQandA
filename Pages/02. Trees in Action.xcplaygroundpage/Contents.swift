//: [Previous](@previous)
import Foundation
/*:
 # Trees Continued
 [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/Trees)
 */
//: ## Traversing a Tree
//: TreeNode class
 
class TreeNode {
    var key: Int
    var left: TreeNode?
    var right: TreeNode?
    init(key: Int) {
        self.key = key
    }
}
//: Building a simple tree: Min Heap
let root = TreeNode(key: 1)
let nodeTwo = TreeNode(key: 2)
let nodeThree = TreeNode(key: 3)
let nodeFour = TreeNode(key: 4)
let nodeFive = TreeNode(key: 5)

root.left = nodeTwo
root.right = nodeThree
nodeTwo.left = nodeFour
nodeTwo.right = nodeFive

/*:
 ## Breadth First Search
For a Breadth First Search, we want to look at:
 * All the nodes on level 0
 * Then all the nodes on level 1
 * Then all the nodes on level 2
*/
// First we need a Queue
class LLNode<Key> {
    let val: Key
    var next: LLNode?
    init(val: Key) {
        self.val = val
    }
}
struct Queue<T> {
    private var head: LLNode<T>?
    private var tail: LLNode<T>?
    var isEmpty: Bool {
        return head == nil
    }
    mutating func enQueue(_ newElement: T) {
        let newNode = LLNode(val: newElement)
        guard let tail = tail else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail.next = newNode
        self.tail = newNode
    }
    mutating func deQueue() -> T? {
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

// Then implement Breadth First Search
// This algorithm visits each node on each level before proceding to the next level.
func bfs(root: TreeNode) {
    var myQueue = Queue<TreeNode>()
    myQueue.enQueue(root)
    while !myQueue.isEmpty {
        let visitedElement = myQueue.deQueue()!
        print(visitedElement.key)
        if let leftChild = visitedElement.left {
            myQueue.enQueue(leftChild)
        }
        if let rightChild = visitedElement.right {
            myQueue.enQueue(rightChild)
        }
    }
}

/*:
 ## Depth First Search
 There are three ways in which we can implement a depth first search.
 */
//: ### Pre-order Depth First Search
func preOrderdfs(root: TreeNode?) {
    guard let root = root else { return }
    print(root.key)
    preOrderdfs(root: root.left)
    preOrderdfs(root: root.right)
}

//: ### In-order Depth First Search
func inOrderdfs(root: TreeNode?) {
    guard let root = root else { return }
    inOrderdfs(root: root.left)
    print(root.key)
    inOrderdfs(root: root.right)
}

//: ### Post-Order Depth First Search
func postOrderdfs(root: TreeNode?) {
    guard let root = root else { return }
    postOrderdfs(root: root.left)
    postOrderdfs(root: root.right)
    print(root.key)
}

/*:
 # Binary Search Tree Big O Runtimes
 O(log(n)) for Search / Access / Insert / Remove
 Worst case
 The worst case runtime for each of these operations is O(n). This occurs when you have a degenerate binary search tree that looks like a linked list.
 */

//: [Next](@next)
