//
//  Max Score from Cards Using Two Pointers.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Max Score from Cards Using Two Pointers

class Solution {
    func maxScore(_ arr: [Int], _ k: Int) -> Int {
        let n = arr.count - 1
        var left = [0], leftSum = 0
        var right = [0], rightSum = 0
        for i in 0..<k{
            leftSum += arr[i]
            rightSum += arr[n - i]
            left.append(leftSum)
            right.append(rightSum)
        }
        var maxSum = 0
        for i in 0...k {
            let currentSum = left[i] + right[k - i]
            maxSum = max(maxSum,currentSum)
            j -= 1
        }
        return maxSum
    }
}
