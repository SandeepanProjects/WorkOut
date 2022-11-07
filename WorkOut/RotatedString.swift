//
//  RotatedString.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation


// rotated string


func rotated(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count && string1.count > 1 else { return false }
    let firstWordArray = Array(string1)
    let rotatedWordArray = Array(string2)
    let count = firstWordArray.count
    
    for(index,letter) in firstWordArray.enumerated() {
        if rotatedWordArray.first == letter {
            if firstWordArray[index..<count] == rotatedWordArray[0..<(count - index)] {
                if firstWordArray[0..<index] == rotatedWordArray[(count - index)..<count] {
                    return true
                }
            }
        }
    }
    return false
}

// rotated(string1: "kevin", string2: "vinke")
