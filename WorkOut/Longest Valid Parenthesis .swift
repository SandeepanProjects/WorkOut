//
//  Longest Valid Parenthesis .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Longest Valid Parenthesis

class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        var maxLength = 0
        var stack = [Int]()
        stack.append(-1)
        for (index,elem) in s.enumerated(){
            if elem == "(" {
                stack.append(index)
            }
            else {
                stack.popLast()
                if let last = stack.last {
                    maxLength = max(maxLength, index - last)
                }
                else{
                    stack.append(index)
                }
            }
        }
        return maxLength
    }
}
