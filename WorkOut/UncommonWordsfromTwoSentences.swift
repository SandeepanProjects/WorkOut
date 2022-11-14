//
//   Uncommon Words from Two Sentences.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Uncommon Words from Two Sentences
//A sentence is a string of single-space separated words where each word consists only of lowercase letters.
//
//A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
//
//Given two sentences s1 and s2, return a list of all the uncommon words. You may return the answer in any order.
//
//
//
//Example 1:
//
//Input: s1 = "this apple is sweet", s2 = "this apple is sour"
//Output: ["sweet","sour"]
func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
    var wordSetA = Set(A.components(separatedBy: " "))
    let wordSetACopy = wordSetA
    var wordSetB = Set(B.components(separatedBy: " "))
    var result = [String]()

    // does not appear in other sentences
    wordSetA.subtract(wordSetB)
    wordSetB.subtract(wordSetACopy)

    // appear once in same sentence
    for word in wordSetA {
        let count = A.components(separatedBy: " ").filter ({(item) -> Bool in
            return item == word
        }).count
        if count > 1 {
            wordSetA.remove(word)
        }
    }
    for word in wordSetB {
        let count = B.components(separatedBy: " ").filter({(item) -> Bool in
            return item == word
        }).count
        if count > 1 {
            wordSetB.remove(word)
        }
    }
    result.append(contentsOf: wordSetA)
    result.append(contentsOf: wordSetB)
    return result

}
