//
//  Remove adjacent duplicates.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Remove adjacent duplicates

class Solution {
    func removeDuplicates(_ S: String) -> String {
        var stack = [Character]()
        for c in S {
            if let top = stack.last, top == c {
                stack.popLast()
            }
            else{
                stack.append(c)
            }
        }
        var result = ""
        for char in stack {
            result += "\(char)"
        }
        return result
    }
}
