//
//  countMatchesRule.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//Input: items = [["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]], ruleKey = "color", ruleValue = "silver"
//Output: 1
//Explanation: There is only one item matching the given rule, which is ["computer","silver","lenovo"].
func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    var totalMatchingRule = 0
    let map = ["type": 0,
               "color": 1,
               "name": 2]
    let indexToLookFor = map[ruleKey] ?? 0
    for row in items {
        if row[indexToLookFor] == ruleValue {
            totalMatchingRule += 1
        }
    }
    return totalMatchingRule
}
