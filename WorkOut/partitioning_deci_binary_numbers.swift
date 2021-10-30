//
//  partitioning_deci_binary_numbers.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

partitioning_deci_binary_numbers

class Solution {
    func minPartitions(_ n: String) -> Int {
        var maxCharacter = 0
        for c in n {
            maxCharacter = max(maxCharacter,Int(String(c),radix:10)!)
        }
        return maxCharacter
    }
}
