//
//  Jump Game (Greedy).swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Jump Game (Greedy)

class Solution {
    func jump(_ nums: [Int]) -> Int {
        var left = 0 , right = 0 , jumps = 0
        while right < nums.count - 1 {
            var farthest = 0
            for i in left...right {
                farthest = max(farthest,i + nums[i])
            }
            jumps += 1
            left = right
            right = farthest
        }
        return jumps
    }
}
