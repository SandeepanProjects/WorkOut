//
//  Rotate Image( Using Transpose and Reverse).swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Rotate Image( Using Transpose and Reverse)

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        // Transpose
        for i in 0..<n {
            for j in 0..<n {
                if i <= j {
                    (matrix[i][j],matrix[j][i]) = (matrix[j][i] ,matrix[i][j])
                }
            }
        }
        // Reverse rows
        for i in 0..<n {
            var low = 0, high = n - 1
            while low < high, low < n/2 {
                ( matrix[i][low], matrix[i][high] ) = (matrix[i][high], matrix[i][low])
                low += 1
                high -= 1
            }
        }
    }
}
