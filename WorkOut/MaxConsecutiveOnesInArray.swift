//
//  MaxConsecutiveOnesInArray.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

//O(n)
func maxConsOne(_ arr: [Int]) -> Int {
    var localCount = 0
    var globalCount = 0
    for item in arr {
        if item == 1 {
            localCount = localCount + 1
            globalCount = max(localCount,globalCount)
        } else {
            localCount = 0
        }
    }
    return globalCount
}
