//
//  Target Array .swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Create Target Array in the Given Order
//Input: nums = [0,1,2,3,4], index = [0,1,2,2,1]
//Output: [0,4,1,3,2]
//Explanation:
//nums       index     target
//0            0        [0]
//1            1        [0,1]
//2            2        [0,1,2]
//3            2        [0,1,3,2]
//4            1        [0,4,1,3,2]

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
       var res = [Int]()
       for i in 0..<nums.count { res.insert(nums[i], at: index[i]) }
       return res
   }
