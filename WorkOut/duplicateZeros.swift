//
//  duplicateZeros.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

func duplicateZeros(_ arr: inout [Int]) {
       guard !arr.isEmpty else { return }
       let n = arr.count
       var index = 0
       var end = n - 1
       while index < n {
           if arr[index] == 0, index < n {
               arr.remove(at: end)
               arr.insert(0, at: index)
               index += 2
           } else {
               index += 1
           }
       }
   }
