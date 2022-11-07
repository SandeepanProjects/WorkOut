//
//  Palindrome.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

func palindrome(string: String) -> Bool {
    var reversedString = string
    
    for letter in reversedString {
        reversedString.insert(letter, at: reversedString.startIndex)
        reversedString.removeLast()
        print(reversedString)
    }
    return reversedString.lowercased() == string.lowercased()
}
