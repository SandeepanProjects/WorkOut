//
//  majority element.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Find majority element using Boyer-Moore voting algo

// Using Boyer-Moore voting algorithm
func findMajorityElement(_ input:[Int]) -> Int {
    var maxElement = 0
    var count = 0
    // Iteration 1 : find max frequency element
    for num in input {
        if num == maxElement {
            count += 1
        }
        else if count == 0 {
            count = 1
            maxElement = num
        }
        else {
            count -= 1
        }
    }
    // Iteration 2 : Validate count
    count = 0
    for num in input {
        if num == maxElement {
            count += 1
        }
    }
    return count > input.count/2 ? maxElement : -1
}
