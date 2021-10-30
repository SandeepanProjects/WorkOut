//
//  Count Binary Substrings.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Count Binary Substrings

class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        let array = Array(s)
        var current = 1, prev = 0, substringCount = 0
        for i in 1..<s.count {
            if array[i] == array[i - 1] {
                current += 1
            }
            else{
                substringCount += min(current,prev)
                prev = current
                current = 1
            }
        }
        return substringCount + min(current,prev)
    }
}
