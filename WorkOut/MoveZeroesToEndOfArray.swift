//
//  MoveZeroesToEndOfArray.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

func moveZeroes(_ arr: [Int]) -> [Int] {
    var arr = arr
    var index = 0
    for item in arr {
        if item != 0 {
            arr[index] = item
            index += 1
        }
        print(arr)
    }
    for i in index..<arr.count {
        arr[i] = 0
    }
    return arr
}
