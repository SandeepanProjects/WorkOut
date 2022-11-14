//
//  Check If It Is a Straight Line.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Check If It Is a Straight Line
//Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
//Output: true
func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    if coordinates.count == 2 {
        return true
    }
    var i = 0, slope = 0.0

    while i < coordinates.count - 1 {
        let first = coordinates[i]
        let second = coordinates[i + 1]
        let top = Double(second[1] - first[1])
        let bottom = Double(second[0] - first[0])
        var localScope = 0.0
        if bottom != 0.0 {
            localScope = top / bottom
        } else {
            localScope = Double(Int.min)
        }
        if i == 0 {
            slope = localScope
        } else {
            if slope != localScope {
                return false
            }
        }
        i += 1
    }
    return true
}

