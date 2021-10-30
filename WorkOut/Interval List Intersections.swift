//
//  Interval List Intersections.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Interval List Intersections

class Solution {
    func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        var output = [[Int]]()
        var p1 = 0, p2 = 0
        while p1<firstList.count , p2<secondList.count{
            let first = firstList[p1]
            let second = secondList[p2]
            let start = max(first[0],second[0])
            let end = min(second[1],first[1])
            if start <= end {
                output.append([start,end])
            }
            if second[1] > first[1]{
                p1 += 1
            }
            else{
                p2 += 1
            }
        }
        return output
    }
}
