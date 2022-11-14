//
//  Decode XORed Array.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Decode XORed Array
//Input: encoded = [1,2,3], first = 1
//Output: [1,0,2,1]
//Explanation: If arr = [1,0,2,1], then first = 1 and encoded = [1 XOR 0, 0 XOR 2, 2 XOR 1] = [1,2,3]

func decodeXOR(_ encoded: [Int],_ firstInt: Int) -> [Int] {
    var decodecArr = Array(repeating: 0, count: encoded.count + 1)
    decodecArr[0] = firstInt
    var i = 0
    while i < encoded.count {
        decodecArr[i + 1] = encoded[i]^decodecArr[i]
        i += 1
    }
    return decodecArr
}
