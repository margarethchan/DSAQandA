//: [Previous](@previous)
import Foundation
/*:
 ## 28 - FIBONACCI
 > Write a function to return the value of the nth number in the fibonacci sequence, starting with 1.
 */

//: PRACTICE



//: SOLUTION
func fibRecursive(num n: Int) -> Int {
    if n == 1 || n == 2 { return 1 }
    return fibRecursive(num: n - 2) + fibRecursive(num: n - 1)
}
fibRecursive(num: 10)

//: SOLUTION
func fibIterative(num n: Int) -> Int {
    var first = 1
    var second = 1
    var current = 2
    var temp = 0
    
    for _ in 3...n {
        //        print("for \(i): \(first), \(second), \(current), \(temp)")
        temp = current
        current = first + second
        first = second
        second = temp
        //        print("New  : \(first), \(second), \(current), \(temp)")
    }
    return current
}
fibIterative(num: 10)

//: SOLUTION
func fibIter(_ n: Int) -> Int {
    var num1 = 1
    var num2 = 1
    var next = 0
    
    for _ in 0..<n - 2 {
        next = num1 + num2
        num1 = num2
        num2 = next
        //        print(next)
    }
    return next
}
fibIter(10)

//: SOLUTION
let chris = [1,3,7,2]
var chris2 = [1,3,7,2]

func prod(_ arr: [Int]) -> Int {
    var product = 1
    var newArr = arr
    if newArr.count == 0 { return 0 }
    if newArr.count == 1 { return arr[0] }
    product = newArr.popLast()!
    return product * prod(newArr)
}
prod(chris)

//: SOLUTION
func productBen(of arr: [Int]) -> Int? {
    guard !arr.isEmpty else { print("boo Vic"); return nil }
    guard arr.count > 1 else { return arr[0] }
    return arr.last! * productBen(of: Array(arr.prefix(arr.count - 1)))!
}
productBen(of: chris)

//: SOLUTION
func productTong(of arr: inout [Int]) -> Int? {
    guard !arr.isEmpty else { print("Vic “The Creeper”"); return nil }
    guard arr.count > 1 else { return arr.popLast()! }
    return arr.popLast()! * productTong(of: &arr)!
}
productTong(of: &chris2)



//: [Next](@next)
