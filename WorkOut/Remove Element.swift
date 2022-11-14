//
//  Remove Element.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Remove Element
// Input: nums = [3,2,2,3], val = 3
//Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

    for first in 0..<nums.count-1 {
        if nums[first] == val {
            nums.remove(at: first)
        }
    }

    for second in 0..<nums.count-1 {
        if nums[second] == val {
            nums.remove(at: second)
        }
    }

    return nums.count
}
