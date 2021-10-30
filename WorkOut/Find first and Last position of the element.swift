//
//  Find first and Last position of the element.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Find first and Last position of the element

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let leftPos = find(nums, target, 0)
        // Left position exceeds bounds or not found
        if leftPos == nums.count || nums[leftPos] != target {
            return [-1, -1]
        }
        // If left Position found, then atleast 1 occurence of the element is presence
        // Then we can find the right position by finding for target + 1
        let rightPos = find(nums,target + 1,leftPos) - 1
        return [leftPos, rightPos]
    }
    func find(_ nums:[Int], _ target:Int,_ left:Int) -> Int {
        var left = left, right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] < target {
                left = mid + 1
            }
            else{
                right = mid - 1
            }
        }
        return left
    }
}
