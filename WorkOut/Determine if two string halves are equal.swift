//
//  Determine if two string halves are equal.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Determine if two string halves are equal

class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        var count = 0
        var low = 0 , high = s.count - 1
        // For the ease of traversal
        let array = Array(s)
        while low < high {
            // First half
            if isVowel(array[low]) {
                count += 1
            }
            // second half
            if isVowel(array[high]){
                count -= 1
            }
            // both pointers moving towards each other
            low += 1
            high -= 1
        }
        return count == 0
    }
    func isVowel(_ char:Character) -> Bool {
        let vowels = ["a","e","i","o","u"]
        return vowels.contains(char.lowercased())
    }
}
