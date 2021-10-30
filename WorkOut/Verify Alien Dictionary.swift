//
//  Verify Alien Dictionary.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
//Verify Alien Dictionary

class Solution {
    var map:[Character:Int] = [:]
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 1 else { return true }
        for (index,letter) in order.enumerated() {
            map[letter] = index
        }
        for i in 0..<words.count - 1 {
            // Compare pairwise strings
            if !isLexicalOrderCorrect(words[i], words[i + 1]) {
                print("\(current), \(last)")
                return false
            }
        }
        return true
    }
    func isLexicalOrderCorrect(_ string1:String, _ string2: String) -> Bool {
        for i in 0..<min(string1.count ,string2.count ) {
            let s1Index = string1.index(string1.startIndex, offsetBy: i)
            let s2Index = string2.index(string2.startIndex,offsetBy: i)
            let char1 = string1[s1Index]
            let char2 = string2[s2Index]
            if char1 != char2 {
                return map[char1]! < map[char2]!
            }
        }
        // check for substring case, [ "apple", "app"]
        return string1.count <= string2.count
    }
}
