//
//  moveNegativeToLeft.swift
//  WorkOut
//
//  Created by Apple on 23/01/22.
//

import Foundation

func moveNegativeToLeft(arr: [Int]) -> [Int] {
    var a = arr
    var l = 0
    var h = a.count - 1
    while (h > l) {
        print("in the loop")
        if (a[l] < 0 && a[h] < 0) {
            l += 1
        }
        else if (a[l] > 0 && a[h] < 0) {
            a.swapAt(l, h)
            l += 1
            h -= 1
        }
        else if (a[l] < 0 && a[h] >= 0) {
            l += 1
            h -= 1
        }
        else if (a[l] > 0 && a[h] >= 0) {
            h -= 1
        }
    }
    return a
}
