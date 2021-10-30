//
//  Triangle (Recursion and Memoization).swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Triangle (Recursion and Memoization)

class Solution {
    var dp: [String:Int]!
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        dp = [String:Int]()
        let minPath = minTotalHelper(triangle, 0 ,0)
        return minPath
    }
    func minTotalHelper(_ triangle:[[Int]],_ row: Int, _ col:Int) -> Int{
        guard row >= 0, col >= 0, row < triangle.count else { return 0}
        if col > row { return 0}
        let key = "\(row):\(col)"
        if let cachedValue = dp[key]{
            return cachedValue
        }
        let sumSameColumn = minTotalHelper(triangle, row + 1, col)
        let sumNextColumn = minTotalHelper(triangle,row + 1, col + 1)
        let totalSum = triangle[row][col] + min(sumNextColumn, sumSameColumn)
        dp[key] = totalSum
        return totalSum
    }
}
