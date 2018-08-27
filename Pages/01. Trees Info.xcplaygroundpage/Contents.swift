//: [Previous](@previous)
import Foundation
/*:
 # Trees
 [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/Trees)
 Instead of a straightforward list, there are branching possibilities.\
 Each element is linked not only to one element, but two different possibilities.\
 Arrays and Linked lists only operate in one dimension (a line).\
 Hashmaps can track groupings, but don't have any order.\
 We are looking for a structure that can represent one object being linked to multiple objects AND keeping a sequence.
 
 ## Defining a Tree
 *Trees* are comprised of *nodes*, and are very similar to Linked Lists.\
 Just like a LinkedListNode, a TreeNode has a *value*. \
 While a LinkedListNode has only one `next` Node, a TreeNode can have any number of `next` Nodes. \
 The most common type of tree is called a *Binary Tree* where each TreeNode can have up to **two** `next` Nodes.
 
     class TreeNode {
        let val: Int
        let left: TreeNode?
        let right: TreeNode?
        init(_ val: Int) {
            self.val = val
            }
        }
 
 Just like a LinkedListNode might not have a `next` Node, a TreeNode might not have a `left` or a `right`.
 
 ## Key Terminology
 The **top** of any tree is called the `root`.\
 The **left** and **right** nodes are called `children`.\
 The **left** and **right** nodes are `siblings` to each other.\
 The node the holds the `children` is called the `parent`.\
 You can pick any node in a tree and call it the `root` of its own **subtree**. We can start to see its recursive structure.\
 A node at the **bottom** of a tree is called a `leaf`.\
 An `edge` is a line connecting two nodes.\
 The `height` of the tree is the **number of edges in the longest path** from the top to the bottom.\
 The `level` of a node is which row it is on. The root is at level 0, its children are at level 1, and so on.
 
 ## Types of Trees
 ### Binary Tree
 A Binary Tree is a tree where every node has 0,1 or 2 children.\
![Binary Tree](binary.png)
 - - -
 ### Full Binary Tree
 A Full Binary Tree is a Binary Tree where every node has 0 or 2 children.\
 ![Full Binary Tree](fullbinary.jpeg)
 - - -
 ### Complete Binary Tree
 A Complete Binary Tree is a Binary Tree where every level except possibly the last is completely filled and each node on the last level is as far left as possible. A Complete Binary Tree is allowed to have a single Node with one child, all others must have 0 or 2.\
 ![Complete Binary Tree](completebinary.jpeg)
 - - -
 ### Balanced Binary Tree
 A Balanced Binary Tree is a Binary tree where the left and right subtrees height differ by at most 1 and both the left and right tree are balanced. A balanced Binary Tree is one where the height is O(log(n)), where n is the number of elements.\
 ![Balanced Binary Tree](balancedbinary.jpeg)
 - - -
 ### Degenerate Tree
 A Degenerate tree is a Tree where every parent has, at most, one child. It's effectively just a Linked List.\
 ![Degenerate Tree](degeneratetree.jpeg)
 - - -
 ### Binary Search Tree
 A Binary Search Tree is Binary Tree with two conditions:
 * Every node in the left child's subtree is less than or equal to its parent.
 * Every node in the right child's subtree is greater than or equal to its parent.
 * (Generally BSTs are defined to have unique values).\
 Typically, when people talk about trees they are talking about Binary Search Trees.\
  ![Binary Search Tree](binarysearchtree.png)
 - - -
 ### Min Heap
 A Min Heap is a Complete Binary Tree where each parent is smaller than its children.\
 The root is the smallest value in the tree.\
  ![Min Heap](minheap.png)
 - - -
 ### Max Heap
 A Max Heap is a Complete Binary Tree where each parent is bigger than its children. \
 The root is the biggest value in the tree.\
  ![Max Heap](maxheap.png)
 - - -
 */



//: [Next](@next)
