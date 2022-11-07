//
//  ContainsDuplicateWithDistance.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

func containdDuplicateWithDistance(_ arr: [Int], _ k: Int) -> Bool {
    var dict = [Int:Int]()
    var minDist = Int.max
    print("input:",arr)
    for(index, item) in arr.enumerated() {
        print("item:", item)
        if dict[item] != nil {
            let prevIndex = dict[item]!
            print("prevIndex:", prevIndex)
            print("index:", index)
            let gap = index - prevIndex
            print("gap:", gap)
            minDist = min(gap,minDist)
            print("minDist:", minDist)
        }
        dict[item] = index
        print("Dict:", dict)
    }
    if minDist <= k {
        return true
    }
    return false
}
