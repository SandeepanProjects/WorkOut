//
//  TransposeMatrix.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


// transpose matrix
func transpose(_ A: [[Int]]) -> [[Int]] {

       var c = Array(repeating: Array(repeating: 0, count: A.count), count: A[0].count)

       for i in stride(from: 0, to: A.count, by: 1) {
           for j in stride(from: 0, to: A[i].count, by: 1) {
               c[j][i] = A[i][j]
           }
       }
       return c
   }
