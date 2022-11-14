//
//  removeDuplicatesFromstring.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

func removeDuplicatesFromString(_ input: String) -> String {
    var usedCharacters = [Character]()

    for letter in input {
        if !usedCharacters.contains(letter) {
            usedCharacters.append(letter)
        }
    }

    return String(usedCharacters)
}

//print(removeDuplicatesFrom2("hello")) // helo
//print(removeDuplicatesFrom2("helo"))  // helo
//print(removeDuplicatesFrom2("Helllo,, worrld!!"))  // Helo, wrd!
