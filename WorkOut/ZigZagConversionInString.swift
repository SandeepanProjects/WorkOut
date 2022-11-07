//
//  ZigZagConversionInString.swift
//  WorkOut
//
//  Created by sandeepan swain on 06/11/22.
//

import Foundation

// zig zag in string

//func convert(_ s: String, _ numRows: Int) -> Int {
//    if numRows == 1 || numRows > s.count { return s }
//
//    var rows = Array(repeating: [String](), count: numRows)
//
//    var counter = 0
//    var canGoDown = false
//    var arrayS = Array(s)
//    for (index,char) in arrayS.enumerated() {
//        rows[counter].append(String(char))
//        if counter == 0 || counter == numRows - 1 {
//            canGoDown = !canGoDown
//        }
//        if canGoDown {
//            counter += 1
//        } else {
//            counter -= 1
//        }
//    }
//    let results = rows.flatMap{$0}
//    return results.joined(separator: "")
//}
