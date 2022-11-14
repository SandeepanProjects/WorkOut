//
//  arrayStringsAreEqual.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Check If Two String Arrays are Equivalent
//Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
//Output: true
//Explanation:
//word1 represents string "ab" + "c" -> "abc"
//word2 represents string "a" + "bc" -> "abc"
//The strings are the same, so return true.
func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    let str1 = word1.reduce("") {(res, str) in
        return res + str
    }
    let str2 = word2.reduce("") {(res, str) in
        return res + str
    }
    return str1 == str2
}
