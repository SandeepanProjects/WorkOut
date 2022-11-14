//
//  finalValueAfterOperations.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Final Value of Variable After Performing Operations
//Input: operations = ["--X","X++","X++"]
//Output: 1
//Explanation: The operations are performed as follows:
//Initially, X = 0.
//--X: X is decremented by 1, X =  0 - 1 = -1.
//X++: X is incremented by 1, X = -1 + 1 =  0.
//X++: X is incremented by 1, X =  0 + 1 =  1.

func finalValueAfterOperations(_ operate: [String]) -> Int {
    var finalVal = 0
    for operation in operate {
        switch operation {
        case "--X", "X--":
            finalVal -= 1
        case "++X", "X++":
            finalVal += 1
        default:
            break
        }
    }
    return finalVal
}
