//
//  Find N Repeated Element in 2N Size Array.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Find N Repeated Element in 2N Size Array

func repeatedNTimes(_ A :[Int]) -> Int {
    var element: Int = 0
    var index: Int = 0
    var mapI: [Int:Int] = [Int:Int]()
    while index < A.count {
        if let _ = mapI[A[index]] {
            element = A[index]
            break
        } else {
            mapI[A[index]] = 1
        }
        index += 1
    }
    return element
}
