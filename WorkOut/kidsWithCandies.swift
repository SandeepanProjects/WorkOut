//
//  kidsWithCandies.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Input: candies = [2,3,5,1,3], extraCandies = 3
//Output: [true,true,true,false,true]
func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
          guard candies.count > 1 else {
               return [true]
          }

        //find the greatest candies
        var greatest = candies.first!
        for i in 1..<candies.count {
            if candies[i] > greatest {
                greatest = candies[i]
            }
        }
        var results: [Bool] = []
        for i in 0..<candies.count {
            let element = candies[i] + extraCandies
            results.append(element >= greatest)
        }

        return results
    }
