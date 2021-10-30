//
//  Count Possibility.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Count Possibility

class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        var count = 0
        var nums = nums
        for i in 1..<nums.count {
            if nums[i] < nums[i - 1] {
                if i == 1 || nums[i - 2] <= nums[i] {
                    nums[i - 1] = nums[i]
                    count += 1
                }
                else{
                    nums[i] = nums[i - 1]
                    count += 1
                }
            }
        }
        return count <= 1
    }
}
