//
//  countConsistentStrings.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Count the Number of Consistent Strings
//Input: allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
//Output: 2
//Explanation: Strings "aaab" and "baa" are consistent since they only contain characters 'a' and 'b'.

func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    var count = 0, found = false
    for word in words {
        found = true
        for c in word {
            if !allowed.contains(c) {
                found = false
                break
            }
        }
        if found {
            count += 1
        }
    }
    return count
}
