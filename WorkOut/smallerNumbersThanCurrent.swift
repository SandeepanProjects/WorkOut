//
//  smallerNumbersThanCurrent.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//How Many Numbers Are Smaller Than the Current Number
//input: nums = [8,1,2,2,3]
//Output: [4,0,1,1,3]
//Explanation:
//For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
//For nums[1]=1 does not exist any smaller number than it.
//For nums[2]=2 there exist one smaller number than it (1).
//For nums[3]=2 there exist one smaller number than it (1).
//For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var i = 0,j = 0 , count = 0
    var output: [Int] = Array(repeating: 0, count: nums.count)
    let arrLength = nums.count
    while i < arrLength {
        j = 0
        count = 0
        while j < arrLength {
            if nums[j] < nums[i] {
                count += 1
            }
            j += 1
        }
        output[i] = count
        i += 1
    }
    return output
}
