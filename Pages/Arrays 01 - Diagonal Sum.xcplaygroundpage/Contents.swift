import Foundation
/*:
 # ARRAYS
 ## 1 - DiagonalSum
 ### Difficulty: Easy
 ### Tags: [Arrays, Matrices, Integers]
 >  Problem Description: Find the sum of the diagonals of a square, two-dimensional array of Ints
 - Example: Input\
 [[1, 2, 9],\
  [8, 2, 3],\
  [4, 5, 6]]\
 \
 Output\
 24
 */
let diagSumMatrix = [[1,2,9],
                     [8,2,3],
                     [4,5,6]]
//: PRACTICE

//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/DiagonalSumSolution.md)
func diagonalSum(of matrix: [[Int]]) -> Int {
    var sum = 0
    // for each index in each row
    for i in 0..<matrix.count {
        // add the value at the matching coordinates of the index: [0,0], [1,1], [2,2]
        sum += matrix[i][i]
        // and add the value at the mirroring coordinates of the index,
        // based on the length of a row (3): [0, 2], [1,1], [2,0]
        sum += matrix[i][matrix.count - 1 - i]
    }
    return sum
}
diagonalSum(of: diagSumMatrix)
//: [Next](@next)
