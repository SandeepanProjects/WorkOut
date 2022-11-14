//
//  Smallest Index With Equal Value.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


// Smallest Index With Equal Value
//Input: nums = [0,1,2]
//Output: 0
//Explanation:
//i=0: 0 mod 10 = 0 == nums[0].
//i=1: 1 mod 10 = 1 == nums[1].
//i=2: 2 mod 10 = 2 == nums[2].
//All indices have i mod 10 == nums[i], so we return the smallest index 0.

func smallestEqual(_ nums: [Int]) -> Int {
    var i = 0
    while i < nums.count {
        if (i % 10 == nums[i]) {
            return i
        }
        i += 1
    }
    return -1
}
