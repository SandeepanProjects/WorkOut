//
//  String Halves Are Alike.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


//Determine if String Halves Are Alike
//Input: s = "book"
//Output: true
//Explanation: a = "bo" and b = "ok". a has 1 vowel and b has 1 vowel. Therefore, they are alike.

func halvesAreAlike(_ s: String) -> Bool {
    var i = 0
    let vowels: [Character] = ["a","e","i","o","u","A","E","I","O","U"], lengthChar = s.count, charArr = Array(s)
    var firstHalfCount = 0, secondHalfCount = 0
    while i < lengthChar/2 {
        firstHalfCount += vowels.contains(charArr[i]) ? 1 : 0
        secondHalfCount += vowels.contains(charArr[lengthChar - i - 1]) ? 1 : 0
        i += 1
    }
    return firstHalfCount == secondHalfCount
}
