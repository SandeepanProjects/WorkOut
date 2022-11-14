//
//  Matrix Diagonal Sum.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Matrix Diagonal Sum
// Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.

//Input: mat = [[1,2,3],
//              [4,5,6],
//              [7,8,9]]
//Output: 25
//Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
//Notice that element mat[1][1] = 5 is counted only once.

func diagonalSum(_ mat:[[Int]]) -> Int {
    var i = 0, principalDiagonal = 0, secondaryDiagonal = 0, j = 0
    while i < mat.count {
        j = mat.count - i - 1
        principalDiagonal += mat[i][j]
        if i != j {
            secondaryDiagonal += mat[i][j]
        }
        i += 1
    }
    return principalDiagonal
}

