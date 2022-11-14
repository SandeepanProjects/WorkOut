//
//  length of last word.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// length of last word in string

func lengthOfLastWord(_ s: String) -> Int {
    if s.isEmpty {
        return 0
    }
    let s = Array(s)
    var length =  s.count
    var lastWordLength = 0

    //trim
    while length > 0 && s[length - 1] == " " {
        length -= 1
    }

    while length > 0 && s[length - 1] != " " {
        lastWordLength += 1
        length -= 1
    }

    return lastWordLength
}
