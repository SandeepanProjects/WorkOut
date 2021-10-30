//
//  Minimum Moves to Equal array.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation


Minimum Moves to Equal array

class Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        let median = nums[nums.count/2]
        var moves = 0
        for num in nums{
            moves += abs(median - num)
        }
        return moves
    }
}
