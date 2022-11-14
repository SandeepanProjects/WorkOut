//
//  firstUniqChar.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//First Unique Character in a String
//Input: s = "leetcode"
//Output: 0
func firstUniqChar(s: String) -> Int {
       var dict = [Character: Int]()
       var position = [Character: Int]()

       var index = 0
       for c in s {
           if let count = dict[c] {
               dict[c] = count + 1
           } else {
               dict[c] = 1
               position[c] = index
           }
           index += 1
       }

       var minP = s.count

       for (c, v) in dict {
           if v == 1 {
               minP = min(minP, position[c]!)
           }
       }
       return minP == s.count ? -1 : minP
   }
