//
//  Vowel.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Vowel

func isVowel(_ input:Character) -> Bool {
    let vowels = ["a","e","i","o","u"]
    return vowels.contains(input.lowercased())
}
