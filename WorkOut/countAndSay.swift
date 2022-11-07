//
//  countAndSay.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// countAndSay

func internalCountAndSay(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    var arr = nums
    var curr = arr[0]
    arr.removeFirst()
    var count = 1
    for item in arr {
        if curr == item {
            count += 1
        } else {
            res.append(count)
            res.append(curr)
            curr = item
            count = 1
        }
    }
    res.append(count)
    res.append(curr)
    return res
}

func countAndSay(_ n: Int) -> [Int] {
    var res = [1]
    if n <= 0 {
        return []
    }
    if n == 1 {
        return res
    }
    for _ in 0..<n {
        res = internalCountAndSay(res)
        print(res)
    }
    return res
}


//   print(countAndSay(4))
