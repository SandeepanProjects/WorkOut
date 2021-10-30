//
//  Combination Sum IV using Dynamic Programming.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Combination Sum IV using Dynamic Programming

class Solution {
    var dp:[Int]!
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        dp = Array(repeating: -1, count: target + 1)
        dp[0] = 1
        getCombinations_helper(target,nums)
        return dp[target]
    }
    func getCombinations_helper(_ score: Int, _ nums:[Int]) -> Int {
        if dp[score] > -1 {
            return dp[score]
        }
        var total = 0
        for num in nums {
            if score >= num {
                total += getCombinations_helper( score - num, nums)
            }
        }
        dp[score] = total
        return dp[score]
    }
}
