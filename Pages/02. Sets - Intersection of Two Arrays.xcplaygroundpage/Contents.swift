//: [Previous](@previous)
import Foundation
/*:
 # Sets
 ## 349. Intersection of Two Arrays
 [[LeetCode]](https://leetcode.com/problems/intersection-of-two-arrays/description/)
 ### Difficulty: Easy
 ### Tags: [Arrays]
 > Problem Description: Given two arrays, write a function to compute their intersection.
 - Example:
Input: nums1 = [1,2,2,1], nums2 = [2,2]
 \
Output: [2]\
\
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 \
Output: [9,4]
 */
let arr1 = [1,2,2,1]
let arr2 = [2,2]

let arr3 = [4,9,5]
let arr4 = [9,4,9,8,4]


//: PRACTICE
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    return Array(Set(nums1).intersection(Set(nums2)))
}
intersection(arr1, arr2)
intersection(arr3, arr4)
//: [Next](@next)
