//
//  diagonalDifferenceMatrix.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

func diagonalDifferenceMatrix(arr: [[Int]]) -> Int {
    var n =  arr.count
    var primaryDiagonalSum = 0
    var secondaryDiagonalSum = 0

    for index in 0..<n {
        primaryDiagonalSum   +=  arr[index][index]
        secondaryDiagonalSum +=  arr[index][n-index-1]
    }

    let difference = abs(primaryDiagonalSum - secondaryDiagonalSum)
    return difference
}
