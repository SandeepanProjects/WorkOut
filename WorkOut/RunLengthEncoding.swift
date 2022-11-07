//
//  RunLengthEncoding.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

//aaabbc -> a3b2c1

func runLength(string: String) -> String {
    var runLengthString = ""
    var counter = 0
    for(index, letter) in string.enumerated() {
        if index == 0 {
            runLengthString.append(letter)
        }
        if letter != runLengthString.last {
            runLengthString.append(String(counter))
            runLengthString.append(letter)
            counter = 1
        } else {
            counter += 1
        }
    }
    runLengthString.append(String(counter))
    return runLengthString
}
