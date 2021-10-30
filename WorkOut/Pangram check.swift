//
//  Pangram check.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Pangram check

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        return Set(sentence).count == 26
    }
}
