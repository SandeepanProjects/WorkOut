//
//  FirstMissingPositive.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// first missing positive

func firstMissingPositive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else {return 1}
    let nums = Set(nums)
    var number = 1
    while number < Int.max {
        if !nums.contains(number) {
            return number
        }
        number += 1
    }
    return 1
}

//  var arr = [1,2,0]
