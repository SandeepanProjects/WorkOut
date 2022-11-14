//
//  Maximum Product of Two Elements in an Array.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Maximum Product of Two Elements in an Array
//Input: nums = [3,4,5,2]
//Output: 12
func maxProduct(_ nums: [Int]) -> Int {
    var largest = Int.min, secondLargest = Int.min
    var i = 0
    let arrLength = nums.count
    while i < arrLength {
        if nums[i] >= secondLargest {
            secondLargest = nums[i]
        }
        if secondLargest >= largest {
            let tmp = largest
            largest = secondLargest
            secondLargest = tmp
        }
        i += 1
    }
    return (secondLargest - 1) * (largest - 1)
}

