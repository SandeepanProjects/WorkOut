//
//  Range Sum 2D.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Range Sum 2D.

class NumMatrix {
    var dp : [[Int]]
    init(_ matrix: [[Int]]) {
        let r = matrix.count , c = matrix[0].count
        dp = Array(repeating: Array(repeating:0,count:c + 1), count:r + 1)
        for i in 1...r {
            for j in 1...c{
                dp[i][j] += matrix[i - 1][j - 1] + dp[i - 1][j] + dp[i][j - 1] - dp[i - 1][j - 1]
            }
        }
    }
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        return dp[row2 + 1][col2 + 1] - dp[row1][col2 + 1] - dp[row2 + 1][col1] + dp[row1][col1]
    }
}
