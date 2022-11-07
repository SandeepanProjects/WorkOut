//
//  UniqueCaseSensitiveString.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

func unique(stringToCheck: String) -> Bool {
    var usedLetters = [String]()
    
    for letter in stringToCheck {
        if !usedLetters.contains(String(letter)) {
            usedLetters.append(String(letter))
        } else {
            return false
        }
    }
    return true
}

// hello world - > true
// AbBbCc - > true // case sensitive



//do it in one line
func uniqueCheckCaseSensitive(stringToCheck: String) -> Bool {
    return stringToCheck.count == Set(stringToCheck).count
}
