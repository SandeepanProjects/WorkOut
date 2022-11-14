//
//  countSegments.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Number of segments in string
//Input: s = "Hello, my name is John"
//Output: 5
//Explanation: The five segments are ["Hello,", "my", "name", "is", "John"]
func countSegments(_ s: String) -> Int {
    var arr: [Character] = Array(s)
    var indexCheck = 0, nonsSpaceChar = false, countCheck = 0
    while indexCheck < arr.count {
        if arr[indexCheck] == " " {
            nonsSpaceChar = false
        } else {
            if nonsSpaceChar == false {
                nonsSpaceChar = true
                countCheck += 1
            }
        }
        indexCheck += 1
    }
    return countCheck
}
