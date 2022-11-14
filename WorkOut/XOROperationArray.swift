//
//  XOR Operation in an Array.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// XOR Operation in an Array
//Input: n = 5, start = 0
//Output: 8
//Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
func xorOperation(_ n: Int, _ startNumber: Int) -> Int {
    var result = 0, i = 0
    while i < n {
        result = result^(startNumber + 2*i)
        i += 1
    }
    return result
}

