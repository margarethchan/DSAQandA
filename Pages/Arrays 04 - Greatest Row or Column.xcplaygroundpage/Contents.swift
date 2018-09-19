//: [Previous](@previous)
import Foundation
/*:
 # ARRAYS
 ## 4 - GreatestRowOrColumn
 ### Difficulty: Easy
 ### Tags: [Arrays, Matrices, Integers]
 > Problem Description: Given a square, two dimensional array of Ints, find the row or column that has the greatest sum. If more than one row or column are tied, return all of them.
 - Example:
 Input\
 1 2 9\
 8 2 3\
 4 5 6\
 \
 Output\
 Column 2: 18
 */
//: PRACTICE
let matrix = [[1,2,9],
              [8,2,3],
              [4,5,6]
]

//: SOLUTION
//: [[C4Q]](https://github.com/C4Q/AC-DSA/blob/master/ArraySolutions/GreatestRoworColumnSolution.md)
enum Location {
    case row(Int)
    case column(Int)
}

func greatestRowOrColumnSum(in arr: [[Int]]) -> (Int, Location) {
    var max = (sum: 0, location: Location.row(0))
    for (index, row) in arr.enumerated() {
        let rowSum = row.reduce(0, +)
        if rowSum > max.sum {
            max = (rowSum, .row(index))
        }
    }
    for columnIndex in 0..<arr[0].count {
        var columnSum = 0
        for rowIndex in 0..<arr.count {
            columnSum += arr[rowIndex][columnIndex]
        }
        if columnSum > max.sum {
            max = (columnSum, .column(columnIndex))
        }
    }
    return max
}

greatestRowOrColumnSum(in: matrix)
//: [Next](@next)
