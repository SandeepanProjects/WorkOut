//
//  ReverseStringWithoutLoop.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation


func reverseStringWithoutLoop(str: String) -> String {
    let words = str.components(separatedBy: " ")
    let mappedWords = words.map{(String($0).reversed())}
    return String(mappedWords.joined(separator: " "))
}

// reverseStringWithoutLoop(str: "hello world")
