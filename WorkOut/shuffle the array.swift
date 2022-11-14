//
//  shuffle the array.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// shuffle the array
// Input: nums = [2,5,1,3,4,7], n = 3
//Output: [2,3,5,4,1,7]
func shuffleArray(_ nums: [Int], _ n: Int) -> [Int] {
    var output = [Int]()
    var i = 0
    while i < n {
        output.append(nums[i])
        output.append(nums[n + i])
        i += 1
    }
    return output
}
