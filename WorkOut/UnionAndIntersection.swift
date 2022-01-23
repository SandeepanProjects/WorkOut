//
//  UnionAndIntersection.swift
//  WorkOut
//
//  Created by Apple on 23/01/22.
//

import Foundation

/*
 Apply the logic of merge (from merge sort). Just add one more condition for handling equality.
 If the elements are equal, add them in both union and intersection.
 */

func getUnionAndIntersection(a1: [Int], a2: [Int]) -> ([Int], [Int]) {
    var union = [Int]()
    var intersection = [Int]()
    var e = 0, f = 0
    
    while (e < a1.count && f < a2.count) {
        if (a1[e] < a2[f]) {
            union.append(a1[e])
            e += 1
        }
        else if (a1[e] > a2[f]) {
            union.append(a2[f])
            f += 1
        }
        else {
            union.append(a1[e])
            intersection.append(a1[e])
            e += 1
            f += 1
        }
    }
    
    while (e < a1.count) {
        union.append(a1[e])
        e += 1
    }
    while (f < a2.count) {
        union.append(a2[f])
        f += 1
    }
    
    return (union,intersection)
}
