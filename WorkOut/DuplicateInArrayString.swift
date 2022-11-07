//
//  DuplicateInArrayString.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

// duplicates from string of array

func duplicates(array:[String]) -> [String] {
    var usedWords = [String]()
    var duplicates = [String]()
    
    for word in array {
        if !usedWords.contains(word) {
            usedWords.append(word)
        } else {
            duplicates.append(word)
        }
    }
    return duplicates
}

