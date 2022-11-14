//
//  balancedStringSplit.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


//Split a String in Balanced Strings
//Input: s = "RLRRLLRLRL"
//Output: 4
//Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
func balancedStringSplit(_ s: String) -> Int {
    var l = 0
    var r = 0
    var str = ""   // balanced strings
    var result = 0
    
    for i in s {
        if i == "L" {
            l += 1
            str.append(i)
            if l == r {
                result += 1
                l = 0
                r = 0
                str = ""
            }
        } else {
            r += 1
            str.append(i)
            if l == r {
                result += 1
                l = 0
                r = 0
                str = ""
            }
        }
    }
    return result
}
