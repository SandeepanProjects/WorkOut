//
//  Count Negative Numbers in a Sorted Matrix.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


//Count Negative Numbers in a Sorted Matrix
//var grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
func countNegatives(_ gridMatrix: [[Int]]) -> Int {
    var count = 0
    for row in gridMatrix {
        let arr = row.reversed()
        for ele in arr {
            if ele < 0 {
                count += 1
            }
        }
    }
    return count
}
