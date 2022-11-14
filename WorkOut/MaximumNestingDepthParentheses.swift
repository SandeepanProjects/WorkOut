//
//  Maximum Nesting Depth Parentheses.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Maximum Nesting Depth of the Parentheses
//Input: s = "(1+(2*3)+((8)/4))+1"
//Output: 3
//Explanation: Digit 8 is inside of 3 nested parentheses in the string.
func maxDepth(_ s: String) -> Int {
    var maxDepth = 0, tmp = 0
    for char in s {
        if char == "(" {
            maxDepth += 1
            tmp = (tmp < maxDepth) ? maxDepth : tmp
        } else if char == ")" {
            maxDepth = maxDepth - 1
        }
    }
    return tmp
}
