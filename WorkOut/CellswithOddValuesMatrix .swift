//
//  Cells with Odd Values in a Matrix .swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Cells with Odd Values in a Matrix :
//m = 2, n = 3, indices = [[0,1],[1,1]]
func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
    var matrix = Array(repeating: Array(repeating: 0, count: m), count: n)
    for indice in indices {
        // update row
        let rowToUpdate = indice[0]
        matrix[rowToUpdate] = matrix[rowToUpdate].map{(item) -> Int in
            return item + 1
        }
        // update column
        let columnToUpdate = indice[1]
        var i = 0
        while i < n {
            matrix[i][columnToUpdate] += 1
            i += 1
        }
    }
    var count = 0
    for row in matrix {
        for ele in row {
            if ele % 2 != 0{
                count += 1
            }
        }
    }
    return count
}
