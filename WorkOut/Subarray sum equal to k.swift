//
//  Subarray sum equal to k.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation


//Subarray sum equal to k

func maxSubArrayLen(_ nums: [Int], _ k: Int) -> Int {

            var longestLen = 0, sum = 0, sumToIdx = [Int: Int]()

            sumToIdx[0] = -1

            

            for (i, num) in nums.enumerated() {

                sum += num

                

                if let idx = sumToIdx[sum - k] {

                    longestLen = max(longestLen, i - idx)

                }

                

                guard let idx = sumToIdx[sum] else {

                    sumToIdx[sum] = i

                    continue

                }

            }

            

            return longestLen

        }
