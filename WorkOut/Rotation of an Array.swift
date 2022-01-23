//
//  Rotation of an Array.swift
//  WorkOut
//
//  Created by Apple on 23/01/22.
//

import Foundation

//Question 7: Write a program to cyclically rotate an array by one.

func reverseArray(low: Int, high: Int, a: inout [Int]) {
    var l = low, h = high
    while(l < h) {
        a.swapAt(l, h)
        l += 1
        h -= 1
    }
}

func rotateArray(d: Int, arr: [Int]) -> [Int] {
    //Considering left rotation is to be done. [0, d-1], [d,n-1]
    //If right rotation is to be done, then [0, n-d-1], [n-d, n-1]
    var a = arr, n = arr.count
    reverseArray(low: 0, high: d-1, a: &a)
    reverseArray(low: d, high: n-1, a: &a)
    reverseArray(low: 0, high: n-1, a: &a)
    return a
}
