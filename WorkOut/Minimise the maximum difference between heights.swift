//
//  Minimise the maximum difference between heights.swift
//  WorkOut
//
//  Created by Apple on 23/01/22.
//

import Foundation

/*
 Logic -
 Sort the array so that elements having minimum difference will be adjacent.
 Now in order minimise the difference, smaller element should be increased, and larger should be decreased.
 So for sure, first element would be increased and last element will be decreased.
 Rest all elements will be compared with these two to find minimum and maximum.
 So iterate and keep finding max and min. Also keep a track of minimum difference till now. If max-min is smaller than exisiting, update it.
 */

func minimiseTheHeightDifference(arr: [Int], k: Int) -> Int {
    var sortedArray = arr
    let n = arr.count - 1
    quickSort(arr: &sortedArray, low: 0, high: n)
    
    var minDifference = sortedArray[n] - sortedArray[0]
    
    for i in 1 ..< n {
        let maxNum = max(sortedArray[i-1]+k, sortedArray[n]-k)
        let minNum = min(sortedArray[i]-k, sortedArray[0]+k)
        minDifference = min(minDifference, maxNum - minNum)
    }
    return minDifference
}
