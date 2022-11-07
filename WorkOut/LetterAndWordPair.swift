//
//  LetterAndWordPair.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

// letter and word pair

func letterPair(array: [String]) -> [(key: Character, value: String)]? {
    guard !array.isEmpty else {return nil}
    return Dictionary(grouping: array, by: {$0.first!}).compactMapValues{$0.first}.sorted{$0 < $1}
}

// letterPair(array: ["Noah", "Apple"])
