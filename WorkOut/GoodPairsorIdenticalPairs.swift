//
//  Number of Good Pairs or Identical Pairs.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Number of Good Pairs or Identical Pairs
//Input: nums = [1,2,3,1,1,3]
//Output: 4
// A pair (i, j) is called good if nums[i] == nums[j] and i < j.

func numIdenticalPairs(_ nums: [Int]) -> Int {
       var count = 0
       var numsExtra: [Int] = nums
       for n in nums {
           numsExtra.remove(at: 0);
           for ne in numsExtra{
               if(n==ne) {
                   count += 1
               }
           }
       }
       return count
   }
