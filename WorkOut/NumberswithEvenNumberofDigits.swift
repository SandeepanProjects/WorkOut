//
//  Numbers with Even Number of Digits.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Find Numbers with Even Number of Digits :
func findNumbers(_ nums: [Int]) -> Int {
    var counter = 0

    for num in nums {
        var nDigits = 0
        var temp = num

        while temp > 0{
            temp  = temp / 10
            nDigits += 1
        }
          if nDigits % 2 == 0 {
            counter += 1
        }

    }
    return counter
}
