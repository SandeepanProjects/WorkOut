//
//  keyboard row.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// keyboard row
//Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard
// Input: words = ["Hello","Alaska","Dad","Peace"]

func findWords(_ words: [String]) -> [String] {

let rules =  ["QWERTYUIOP", "ASDFGHJKL", "ZXCVBNM"]
var result = words

words.forEach { word in
    // If the word not in the rules and filter it
    if (checkWords(word: word.uppercased())) {
        result = result.filter { $0 != word }
    }
}


// check if the word's characters are all in one keyboard row
func checkWords(word: String) -> Bool {

    // Use first character to find which row the word would be in

    let rule = rules.filter { $0.range(of: String(word.first!)) != nil }


    // If any character of the word not contain in the rule -> return true
    for c in word {
        if (rule.first!.range(of: String(c))) == nil {
            return true
        }
    }

    return false
}

return result
}
