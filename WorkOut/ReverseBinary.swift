//
//  ReverseBinary.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation


// reverse Binary

func binaryReverse(number: Int) -> UInt {
    let binary = String(number, radix: 2)
    let paddedZeroCount = 8 - binary.count
    let paddedBinary = String(repeating: "0", count: paddedZeroCount) + binary
    return UInt(String(paddedBinary.reversed()), radix: 2)!
}


// binaryReverse(number: 32)

