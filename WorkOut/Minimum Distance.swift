//
//  Minimum Distance.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Minimum Distance

class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let longestCommonLength = lcsLength(word1, word2)
        return word1.count + word2.count - 2 * longestCommonLength
    }
    func lcsLength(_ s1: String,_ s2:String) -> Int {
        var matrix = [[Int]](repeating: [Int](repeating: 0, count: s2.count+1), count: s1.count+1)
        for (i, char1) in s1.enumerated() {
            for (j, char2) in s2.enumerated() {
                if char1 == char2 {
                    // Common char found, add 1 to highest lcs found so far.
                    matrix[i+1][j+1] = matrix[i][j] + 1
                } else {
                    // Not a match, propagates highest lcs length found so far.
                    matrix[i+1][j+1] = max(matrix[i][j+1], matrix[i+1][j])
                }
            }
        }
        return matrix[s1.count][s2.count]
    }
}
