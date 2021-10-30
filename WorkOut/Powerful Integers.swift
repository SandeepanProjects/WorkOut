//
//  Powerful Integers.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Powerful Integers

class Solution {
    func powerfulIntegers(_ x: Int, _ y: Int, _ bound: Int) -> [Int] {
        guard bound >= 2 else{
            return []
        }
        var set = Set<Int>()
        var powerX = 1
        for i in 1..<bound where powerX <= bound{
            var powerY = 1
            while powerX + powerY <= bound {
                set.insert(powerX + powerY)
                powerY *= y
                if y == 1 {
                    break
                }
            }
            if x == 1 {
                break
            }
            powerX *= x
        }
        return Array(set)
    }
}
