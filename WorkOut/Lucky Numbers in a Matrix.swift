//
//  Lucky Numbers in a Matrix.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Lucky Numbers in a Matrix
// A lucky number is an element of the matrix such that it is the minimum element in its row and maximum in its column.

func luckyNumbers(_ matrixOne: [[Int]]) -> [Int] {
    var minColumnNumbers:[Int] = [Int](), i = 0, j = 0
    var maxColumsnNumbers: [Int] = [Int]()
    let rows = matrixOne.count
    let column = matrixOne[0].count
    var index = 0
    while index < rows {
        minColumnNumbers.append(findMin(matrixOne[index]))
        index += 1
    }
    while i < column {
        j = 1
        var max = matrixOne[0][i]
        while j < rows {
            if max < matrixOne[j][i] {
                max = matrixOne[j][i]
            }
            j += 1
        }
        maxColumsnNumbers.append(max)
        i += 1
    }
    return Array(Set(minColumnNumbers).intersection(Set(maxColumsnNumbers)))
}

func findMin(_ arr: [Int]) -> Int {
    var min = arr[0]
    var i = 1
    while i < arr.count {
        if min > arr[i] {
            min = arr[i]
        }
        i += 1
    }
    return min
}
