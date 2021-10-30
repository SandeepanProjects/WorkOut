//
//  Search 2D Matrix.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
Search 2D Matrix

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let n = matrix.count, m = matrix[0].count
        var low = 0, high = n * m - 1
        while low <= high {
            let mid = low + (high - low ) / 2
            let row = mid / m
            let col = mid % m
            if matrix[row][col] == target {
                return true
            }
            else if matrix[row][col] > target {
                high = mid - 1
            }
            else{
                low = mid + 1
            }
        }
        return false
    }
}
