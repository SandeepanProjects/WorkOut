//
//  Brick Wall.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Brick Wall

class Solution {
    func leastBricks(_ walls: [[Int]]) -> Int {
        var map = [Int:Int]()
        var maxCommonInterleavingPoints = 0
        for wall in walls {
            var prefixSum = 0
            for (index,brick) in wall.enumerated() {
                if index == wall.count - 1 {
                    continue
                }
                prefixSum += brick
                if let existing = map[prefixSum]{
                    map[prefixSum] = existing + 1
                }
                else{
                    map[prefixSum] = 1
                }
                maxCommonInterleavingPoints = max(maxCommonInterleavingPoints, map[prefixSum]!)
            }
        }
        return walls.count - maxCommonInterleavingPoints
    }
}
