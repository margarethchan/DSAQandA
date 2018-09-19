//: [Previous](@previous)
import Foundation
/*:
 ## 27 - FACTORIAL
 > Write a function to return the value of n!.
 */
//: PRACTICE


//: SOLUTION
func factorialIterative(_ n: Int) -> Int? {
    guard n >= 0 else { return nil }
    var product = 1
    for i in 1...n {
        product *= i
    }
    return product
}
factorialIterative(6)

//: SOLUTION
func factorialRecursive(_ n: Int) -> Int {
    return (n > 0 ? (n * factorialRecursive(n - 1)) : 1)
}
factorialRecursive(6)

//: SOLUTION
func fact(_ n: Int) -> Int {
    if n == 0 { return 1 }
    return n * fact(n - 1)
}
fact(6)


//: [Next](@next)
