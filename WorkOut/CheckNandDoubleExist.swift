//
//  Check If N and Its Double Exist.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Check If N and Its Double Exist
//Input: arr = [10,2,5,3]
//Output: true
//Explanation: For i = 0 and j = 2, arr[i] == 10 == 2 * 5 == 2 * arr[j]

func checkIfExists( _ arr: [Int]) -> Bool {
    var mapCheck = [Int:Int](), existsCheck = false
    for ele in arr {
        if let _ = mapCheck[ele] {
            existsCheck = true
            break
        } else {
            if ele % 2 == 0 {
                mapCheck[ele/2] = ele/2
            }
            mapCheck[2*ele] = 2 * ele
        }
    }
    return existsCheck
}
