//
//  ReverseOnlyLetters.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation


// Reverse only letters

func reverseOnlyLetters(_ S: String) -> String {
    var stringArray = Array(S)
    var left = 0
    var right = stringArray.count - 1
    
    while left < right {
        if stringArray[left].isLetter && stringArray[right].isLetter {
            stringArray.swapAt(left, right)
            left += 1
            right -= 1
        } else if !stringArray[left].isLetter && stringArray[right].isLetter {
            left += 1
        } else if stringArray[left].isLetter && !stringArray[right].isLetter {
            right -= 1
        } else {
            right -= 1
            left += 1
        }
    }
    return String(stringArray)
}


// reverseOnlyLetters("ab-123-cd")
