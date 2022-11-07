//
//  CountBits.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

// CountBits

func countBits(_ nums: Int) -> [Int] {
    var array = [Int]()
    for number in 0...nums {
        let binaryOnes = String(number, radix: 2).filter{$0 == "1"}.count
        array.append(binaryOnes)
    }
    return array
}

// countBits(2)
// o/p - > [0,1,2]
