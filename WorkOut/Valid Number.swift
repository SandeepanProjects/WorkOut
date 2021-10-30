//
//  Valid Number.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Valid Number

class Solution {
    func isNumber(_ s: String) -> Bool {
        var isNum = false
        var isDecimal = false
        var isExp = false
        var arr = Array(s)
        for (index,elem) in arr.enumerated() {
            if elem >= "0" , elem <= "9" {
                isNum = true
            }
            else if "+-".contains(elem) {
                if index != 0 , arr[index - 1].lowercased() != "e" {
                    return false
                }
            }
            else if elem == "." {
                if isDecimal || isExp {
                    return false
                }
                isDecimal = true
            }
            else if elem.lowercased() == "e"{
                if isExp || isNum == false {
                    return false
                }
                isNum = false
                isExp = true
            }
            else{
                return false
            }
        }
        return isNum
    }
}
