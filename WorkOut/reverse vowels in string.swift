//
//  reverse vowels in string.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// reverse vowels in string

func reverseVowels(_ s: String) -> String {

    guard s.count > 1 else {
        return s
    }

    var reverseVowelsStr = Array(s)
    let vowels = Set("aeiouAEIOU")
    var startIndex = 0
    var endIndex = s.count - 1

    while startIndex < endIndex {

        let isVowelAtStart = vowels.contains(reverseVowelsStr[startIndex])
        let isVowelAtEnd = vowels.contains(reverseVowelsStr[endIndex])

        if isVowelAtStart, isVowelAtEnd {
            reverseVowelsStr.swapAt(startIndex, endIndex)
            startIndex += 1
            endIndex -= 1
        } else if !isVowelAtStart {
            startIndex += 1
        } else if !isVowelAtEnd {
            endIndex -= 1
        }

    }

    return String(reverseVowelsStr)
}
