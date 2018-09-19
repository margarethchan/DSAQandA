//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 6 - MatrixSum
 ### Difficulty: Easy
 ### Tags: [Arrays, Matrices, Integers]
 > Problem Description: Find the sum of all elements in a two dimensional, rectangular array except for the corners.
 - Example: Input\
 1 3 9 2\
 3 2 0 3\
 2 8 1 4\
 \
 Output\
 29
 */
let matrixSumInput = [[1,3,9,2],[3,2,0,3],[2,8,1,4]]
//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/MatrixSumSolution.md)
func sumWithoutCorners(of arr: [[Int]]) -> Int {
    var sum = 0
    for (rowIndex, row) in arr.enumerated() {
        sum += row.reduce(0, +)
        if rowIndex == 0 || rowIndex == arr.count - 1 {
            sum -= row[0]
            sum -= row[row.count - 1]
        }
    }
    return sum
}
//: PRACTICE


//: MY SOLUTION
func sumNoCorners(in matrix: [[Int]]) -> Int {
    var cornerSum = 0
    var bodySum = 0
    for row in matrix {
        if row == matrix[0] || row == matrix[matrix.count - 1] {
            cornerSum += row[0]
            cornerSum += row[row.count - 1]
        }
        for value in row {
            bodySum += value
        }
        
    }
    return bodySum - cornerSum
}
sumNoCorners(in: matrixSumInput)

//: [Next](@next)
