//
//  Reverse polish .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Reverse polish

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        var operators = "+-/*"
        for token in tokens {
            if operators.contains(token) {
                var result = 0
                let second = stack.popLast()!
                let first = stack.popLast()!
                switch token {
                case "+":
                    result = first + second
                case "-":
                    result = first - second
                case "*":
                    result = first * second
                default:
                    result = first/second
                }
                stack.append(result)
            }
            else if let value = Int(token){
                stack.append(value)
            }
        }
        return stack[0]
    }
}
