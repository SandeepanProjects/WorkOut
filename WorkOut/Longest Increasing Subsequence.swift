//
//  Longest Increasing Subsequence.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Longest Increasing Subsequence


let list = [1,5,3,1,7,9,3,6,10,2,22]
var cache = Array.init(repeating: 1, count: list.count) // our auxiliary structure full of one's


let list = [1,5,3,1,7,9,3,6,10,2,22]
var cache = Array.init(repeating: 1, count: list.count)
var maxResult = 1

for x in 1..<list.count {
    for y in 0..<x {
        if list[x] > list[y] {
            cache[x] = max(cache[x], cache[y]+1)
            if cache[x] > maxResult {
                maxResult = cache[x]
            }
        }
    }
}

print(maxResult) // O(1)
cache.max() // O(n)
