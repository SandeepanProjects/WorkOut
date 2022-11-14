//
//  remove all adjacent duplicates in string.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


// remove all adjacent duplicates in string
// correct
func removeDuplicates(_ s: String) -> String {
    var str: [Character] = Array(s)
    var stack: [Character] = [Character]()
    var top: Int = -1
    var index: Int = 0
    while index < str.count {
        if stack.isEmpty {
            stack.append(str[index])
            top += 1
        } else {
            if stack[top] == str[index] {
                stack.remove(at: top)
                top -= 1
            } else {
                stack.append(str[index])
                top += 1
            }
        }
        index += 1
    }
    return String(stack)
}
