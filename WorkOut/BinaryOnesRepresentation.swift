//
//  BinaryOnesRepresentation.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

// binary ones representation

func representBinaries(number: Int) -> (Int?, Int?) {
    let originalNumber = String(number, radix: 2)
    let originalBinaryCount = originalNumber.filter{$0 == "1"}.count
    
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for currentNumber in number + 1...Int.max {
        let currentBinary = String(currentNumber, radix: 2)
        let currentOneCount = currentBinary.filter{$0 == "1"}.count
        
        if currentOneCount == originalBinaryCount {
            nextHighest = currentNumber
            break
        }
    }
            
    for currentNumber in (0..<number).reversed() {
        let currentBinary = String(currentNumber, radix: 2)
        let currentOneCount = currentBinary.filter{$0 == "1"}.count
        
        if currentOneCount == originalBinaryCount {
            nextLowest = currentNumber
            break
        }
    }
    return(nextLowest, nextHighest)
}


// representBinaries(number: 12)
