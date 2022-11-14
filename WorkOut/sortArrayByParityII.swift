//
//  sortArrayByParityII.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

func sortArrayByParityII(_ nums: [Int]) -> [Int] {
       var result: [Int] = Array(repeating: 0, count: nums.count)
       var i = 0
       for x in nums where (x % 2 == 0) {
           result[i] = x
           i += 2
       }
       i = 1
       for x in nums where (x % 2 == 1) {
           result[i] = x
           i += 2
       }
       return result
   }
