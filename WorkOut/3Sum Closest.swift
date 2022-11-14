//
//  3Sum Closest.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


//3Sum Closest
//Input: nums = [-1,2,1,-4], target = 1
//Output: 2
//Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {

        let sorted = nums.sorted()
        let length = sorted.count

        var diff: Int = .max
        var result = 0

        for i in 0..<length - 2 {
            var n = i + 1, q = length - 1
            while n < q {
                let sum = sorted[i] + sorted[n] + sorted[q]

                sum > target ? (q -= 1) : (n += 1)

                let value =  abs(sum - target)

                if value < diff {
                    diff = value
                    result = sum
                }
            }
        }
        return result
    }
