//
//  Richest Customer Wealth.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Richest Customer Wealth
//Input: accounts = [[1,5],[7,3],[3,5]]
//Output: 10
//Explanation:
//1st customer has wealth = 6
//2nd customer has wealth = 10
//3rd customer has wealth = 8
//The 2nd customer is the richest with a wealth of 10.

func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result = 0
        for acc in accounts {
            let wealth = acc.reduce(0) { $0 + $1 }
            result = max(result, wealth)
        }
        return result
    }

