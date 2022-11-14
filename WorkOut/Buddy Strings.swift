//
//  Buddy Strings.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Buddy Strings
//Input: s = "ab", goal = "ba"
//Output: true
//Explanation: You can swap s[0] = 'a' and s[1] = 'b' to get "ba", which is equal to goal.
func buddyStrings(_ A: String, _ B: String) -> Bool {
       let a = Array(A)
       let b = Array(B)
       var list = [Int]()
       guard A.count == B.count else { return false }
       for index in 0 ..< a.count {
           if a[index] != b[index] {
               list.append(index)
           }
       }
       if list.count != 2 {
           if list.count == 0 {
               var visited: Set<Character> = []
               for c in A {
                   if visited.contains(c) { return true }
                   visited.insert(c)
               }
           }
           return false
       }
       let idx1 = list.first!
       let idx2 = list.last!
       return a[idx1] == b[idx2] && a[idx2] == b[idx1]
   }

