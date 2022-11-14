//
//  running-sum-of-1d-array.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// running-sum-of-1d-array
//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//Input: nums = [1,2,3,4]
//Output: [1,3,6,10]
// Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

func runningSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        var result: [Int] = []
        for n in nums {
            sum += n
            result.append(sum)
        }
        return result
    }
