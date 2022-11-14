//
//  First Occurrence Haystack.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


// Find the Index of the First Occurrence in a String
//Input: haystack = "sadbutsad", needle = "sad"
//Output: 0
//Explanation: "sad" occurs at index 0 and 6.
//The first occurrence is at index 0, so we return 0.
//Find the Index of the First Occurrence in a String
func strStrCheck(_ haystack: String, _ needle: String) -> Int {
        let hChars = Array(haystack), nChars = Array(needle)
        let hLen = hChars.count, nLen = nChars.count

        guard hLen >= nLen else {
            return -1
        }
        guard nLen != 0 else {
            return 0
        }

        for i in 0...hLen - nLen {
            if hChars[i] == nChars[0] {
                for j in 0..<nLen {
                    if hChars[i + j] != nChars[j] {
                        break
                    }
                    if j + 1 == nLen {
                        return i
                    }
                }
            }
        }

        return -1
    }
