//
//  Letter Combinations of a phone number.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Letter Combinations of a phone number

class Solution {
    let map:[Character:String] = ["2" : "abc", "3": "def", "4" : "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv","9":"wxyz"]
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.isEmpty == false else { return [] }
        var output = [String]()
        combinations_dfs_helper(digits,"",0,&output)
        return output
    }
    func combinations_dfs_helper(_ digits:String,_ current:String,_ index:Int,_ output: inout [String]){
        if index == digits.count {
            output.append(current)
            return
        }
        let charIndex = digits.index(digits.startIndex, offsetBy:index)
        let currentChar = digits[charIndex]
        let charDigits = Array(map[currentChar]!)
        for i in 0..<charDigits.count {
            let newChar = current + "\(charDigits[i])"
            combinations_dfs_helper(digits, newChar, index + 1, &output)
        }
    }
}
