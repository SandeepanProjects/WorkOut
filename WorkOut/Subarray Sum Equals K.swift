//
//  Subarray Sum Equals K.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Subarray Sum Equals K

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0, currentSum = 0
        var map = [Int:Int]()
        map[currentSum] = 1
        for num in nums {
            currentSum += num
            let key = currentSum - k
            if map[key] != nil {
                count += map[key]!
            }
            if let exisitingFreq = map[currentSum]{
                map[currentSum] = exisitingFreq + 1
            }
            else{
                map[currentSum] = 1
            }
        }
        return count
    }
}
