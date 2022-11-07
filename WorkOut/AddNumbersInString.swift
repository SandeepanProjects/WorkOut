//
//  AddNumbersInString.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// Add number in string

func addNumbers(stringToCheck: String) -> Int {
    var numberString = ""
    for character in stringToCheck {
        if Int(String(character)) != nil {
            numberString.append(character)
        } else {
            numberString.append(" ")
        }
    }
    let numberedArray = numberString.components(separatedBy: " ")
    print(numberString)
    let mappedNumberArray = numberedArray.compactMap{Int($0)}
    print(mappedNumberArray)
    return mappedNumberArray.reduce(0,+)
}


//  let result  = addNumbers(stringToCheck: "a100b200c300")
