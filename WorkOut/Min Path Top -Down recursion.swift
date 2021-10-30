//
//  Min Path Top -Down recursion.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Min Path Top -Down recursion

class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        let minPath = minTotalHelper(triangle, 0 ,0)
        return minPath
    }
    func minTotalHelper(_ triangle:[[Int]],_ row: Int, _ col:Int) -> Int{
        guard row >= 0, col >= 0, row < triangle.count else { return 0}
        if col > row { return 0}
        let sumSameColumn = minTotalHelper(triangle, row + 1, col)
        let sumNextColumn = minTotalHelper(triangle,row + 1, col + 1)
        let totalSum = triangle[row][col] + min(sumNextColumn, sumSameColumn)
        return totalSum
    }
}
