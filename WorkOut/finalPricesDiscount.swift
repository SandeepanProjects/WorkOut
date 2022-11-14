//
//  finalPricesDiscount.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Final Prices With a Special Discount in a Shop
//Input: prices = [8,4,6,2,3]
//Output: [4,2,4,2,3]
//Explanation:
//For item 0 with price[0]=8 you will receive a discount equivalent to prices[1]=4, therefore, the final price you will pay is 8 - 4 = 4.
//For item 1 with price[1]=4 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 4 - 2 = 2.
//For item 2 with price[2]=6 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 6 - 2 = 4.
//For items 3 and 4 you will not receive any discount at all.

func finalPrices(_ prices: [Int]) -> [Int] {
    var finalPriceAfterDiscount = [Int]()
    var i = 0, j = 0, lessPriceFound = false
    let count = prices.count
    while i < count {
        let ele = prices[i]
        j = j + 1
        lessPriceFound = false
        while j < count {
            if prices[j] <= ele {
                lessPriceFound = true
                finalPriceAfterDiscount.append(ele - prices[j])
                break
            }
            j += 1
        }
        if !lessPriceFound {
            finalPriceAfterDiscount.append(ele)
        }
        i += 1
    }
    return finalPriceAfterDiscount
}
