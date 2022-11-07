//
//  RemoveDuplicatesFromArray.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// Remove duplicates from array

func removeDuplicates(nums: inout [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    
    var currentNumber = 0
    var indexSubtractor = 0
    
    for (indexSave, number) in nums.enumerated() {
        if indexSave == 0 {
            currentNumber = number
        } else {
            if currentNumber == number {
                nums.remove(at: indexSave - indexSubtractor)
                indexSubtractor += 1
            } else {
                currentNumber = number
            }
        }
    }
    return nums
}

//var arr = [0,0,1,1,1,1,2,2,2,2,5,5,5,5,5,5]
//let result  = removeDuplicates(nums: &arr)
