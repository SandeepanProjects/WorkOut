//
//  Largest sum contiguous Subarray.swift
//  WorkOut
//
//  Created by Apple on 23/01/22.
//

import Foundation

/*
 Approach: Kadane's Algo
 */

func largestSumContiguousSubArray(arr: [Int]) -> [Int] {
    var a = [Int]()     // Temp array for returning (optional)
    
    var start = 0           // to track the starting index of sub array
    var end = 0             // to track the end index of sub array
    var s = 0               // for updating start
    var maxSum = 0          // for storing max sum
    var currentSum = 0      // for storing sum till here
    var i = 0               // counter
    
    while i < arr.count {
        currentSum += arr[i]            // keep updating the sum till here
        
        if (currentSum < 0) {           // if sum till here got -ve, then array till here is to be discarded. So update s ahead of this point
            currentSum = 0
            s = i + 1
        }
        if (currentSum > maxSum) {      // if summ till here is > max sum so far, update max sum, start with s and end with i (this point)
            maxSum = currentSum
            end = i
            start = s
        }
        i += 1
    }
    
    for j in start ... end {
        a.append(arr[j])
    }
    return a
}
