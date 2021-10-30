//
//  Min cost climbing stairs.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Min cost climbing stairs

class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp = [Int](repeating:0, count: cost.count+1)
        for i in 2..<dp.count{
            let oneStepCost = dp[i - 1] + cost[i - 1]
            let twoStepCost = dp[i - 2] + cost[i - 2]
            dp[i] = min(oneStepCost, twoStepCost)
        }
        return dp[cost.count]
    }
}
