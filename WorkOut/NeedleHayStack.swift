//
//  NeedleHayStack.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// needleHayStack

func needleHayStack(_ haystack: String, _ needle: String) -> Int {
    var hayArr = Array(haystack)
    var needleArr = Array(needle)
    var hayCount = hayArr.count
    var needleCount = needleArr.count
    
    if hayCount < needleCount {return -1}
    if hayCount <= 0 { return -1}
    
    let loopLength =  hayCount - needleCount
    
    for i in 0...loopLength {
        if hayArr[i] == needleArr[0] {
            for j in 0..<needleCount {
                if hayArr[i+j] != needleArr[j] {
                    break
                }
                if j+1 == needleCount {
                    return i
                }
            }
        }
    }
    return -1
}


// print(needleHayStack("hello", "a"))
