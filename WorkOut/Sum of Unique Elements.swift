//
//  Sum of Unique Elements.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Sum of Unique Elements
//Input: nums = [1,2,3,2]
//Output: 4
//Explanation: The unique elements are [1,3], and the sum is 4.

func sumOfUnique(_ nums: [Int]) -> Int {
    var map = [Int:Int]()
    for ele in nums {
        if let value = map[ele] {
            map[ele] = value + 1
        } else {
            map[ele] = 1
        }
    }
    // remove values with frequency greater than 1
    map = map.filter{(k,v) -> Bool in
        return v == 1
    }
    // find of sum of all the values
    return map.keys.reduce(0) {(res,val) -> Int in
        return res + val
    }
}
