//
//  Replace Elements with Greatest Element on Right Side.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Replace Elements with Greatest Element on Right Side
//Input: arr = [17,18,5,4,6,1]
//Output: [18,6,6,6,1,-1]

func replaceElements(_ arr: [Int]) -> [Int] {
    var index
    = arr.count - 1
    var output: [Int] = Array(repeating: -1, count: arr.count)
    var max = -1
    while index > 0 {
        if max < arr[index] {
            max = arr[index]
        }
        output[index - 1] = max
        index -= 1
    }
    return output
}

