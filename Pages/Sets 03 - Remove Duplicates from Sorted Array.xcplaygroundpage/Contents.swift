//: [Previous](@previous)
import Foundation
/*:
 # Sets
 ## Remove Duplicates in Sorted Array
 ### Tags: [Arrays]
 > Problem Description: Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 - Example:
 Given nums = [1,1,2],
 \
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
 \
 It doesn't matter what you leave beyond the returned length.
 \
 \
 Given nums = [0,0,1,1,1,2,2,3,3,4],
 \
 Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.
 \
 It doesn't matter what values are set beyond the returned length.
 */
//: *inout* means that modifying the local variable will also modify the passed-in parameters. Without it, the passed-in parameters will remain the same value. Trying to think of **reference** type when you are using `inout` and **value** type without using it.
var nums1 = [1,1,2]
var nums2 = [0,0,1,1,1,2,2,3,3,4]
//: PRACTICE


//: SOLUTION
func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count <= 1 {
        return nums.count
    }
    removeRecursively(&nums)
    return nums.count
}
func removeRecursively(_ nums: inout [Int]) {
    //    print("nums count = \(nums.count)")
    for i in 1...nums.count {
        // if the value before is the same as the current value, remove the current value
        if i < nums.count && nums[i-1] == nums[i] {
            nums.remove(at: i)
            print(nums)
            removeRecursively(&nums)
        }
    }
}

removeDuplicates(&nums1)
removeDuplicates(&nums2)
//: [Next](@next)
