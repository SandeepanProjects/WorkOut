//
//  TrueNumber.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

// True Number

func trueNumber(stringToConsider: String) -> Bool {
    return stringToConsider.count == stringToConsider.filter{$0 >= "0" && $0 <= "9"}.count
}

//trueNumber(stringToConsider: "123445565667")
//trueNumber(stringToConsider: "1.23")

