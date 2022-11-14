//
//  addStrings.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//ADD Strings
//Input: num1 = "11", num2 = "123"
//Output: "134"
func addStrings(_ num1: String, _ num2: String) -> String {

    let num1chars = [Character](num1.reversed())
    let num2chars = [Character](num2.reversed())

    var i = 0, j = 0, sum = 0, carry = 0
    var value: String = ""

    while i < num1chars.count || j < num2chars.count || carry != 0 {
        sum = carry

        if i < num1chars.count, num1chars[i].isNumber {
            sum += Int(String(num1chars[i]))!
            i += 1
        }
        if j < num2chars.count, num2chars[j].isNumber {
            sum += Int(String(num2chars[j]))!
            j += 1
        }

        carry = sum / 10
        sum = sum % 10

        value.append(String(sum))
    }

    return String(value.reversed())
}
