//
//  toLowerCase.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

toLowerCase

class Solution {
    func toLowerCase(_ s: String) -> String {
        var result = ""
        for c in s {
            var letter = c
            if c >= "A", c <= "Z" {
                letter = toLower(c)
            }
            result += "\(letter)"
        }
        return result
    }
    func toLower(_ character:Character) -> Character {
        let asciiValue:UInt8 = character.asciiValue! + 32
        return Character(UnicodeScalar(asciiValue))
    }
}
