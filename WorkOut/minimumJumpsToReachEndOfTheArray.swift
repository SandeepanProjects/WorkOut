//
//  minimumJumpsToReachEndOfTheArray.swift
//  WorkOut
//
//  Created by Apple on 23/01/22.
//

import Foundation

func minimumJumpsToReachEndOfTheArray(arr:[Int]) -> Int {
    var currentIndex = 0
    var jumps = 1
    
    while (currentIndex < arr.count) {
        
        var newIndex = arr[currentIndex] + currentIndex
        
        if currentIndex == 0 {
            currentIndex += 1   // 1 is added because indexing starts from 0
            newIndex += 1       // Because the one that we added in current index is missing in new index
        }
        
        if (arr[currentIndex] == 0) {
            return -1
        }
        if (newIndex < arr.count) {
            jumps += 1
        } else {
            return jumps
        }
        currentIndex = newIndex
    }
    return -1
}
