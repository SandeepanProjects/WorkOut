//
//  findMaxConsecutiveOnes.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {

    guard !nums.isEmpty else {
        return 0
    }

    var globalMax = 0
    var lastZeroIdx = -1

    for i in 0..<nums.count {
        if nums[i] == 0 {
            globalMax = max(lastZeroIdx == -1 ? i : i - lastZeroIdx - 1, globalMax)
            lastZeroIdx = i
        }
    }
    globalMax = max(lastZeroIdx == -1 ? nums.count : nums.count - lastZeroIdx - 1, globalMax)
    return globalMax
}
