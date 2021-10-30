//
//  Longest Mountain Array.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Longest Mountain Array

class Solution {
    func longestMountain(_ arr: [Int]) -> Int {
        guard arr.count > 2 else { return 0}
        var maxLength = 0
        var i = 1
        while i < arr.count - 1 {
            if arr[i] > max(arr[i-1], arr[i+1]) {
                var low = i
                var count = 1
                while low >= 1 , arr[low] > arr[low - 1]{
                    count += 1
                    low -= 1
                }
                while i <= arr.count - 2 , arr[i] > arr[i + 1]{
                    i += 1
                    count += 1
                }
                maxLength = max(maxLength, count)
            }
            i += 1
        }
        return maxLength
    }
}
