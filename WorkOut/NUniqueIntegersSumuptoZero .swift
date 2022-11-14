//
//  Find N Unique Integers Sum up to Zero .swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Find N Unique Integers Sum up to Zero :

//Input: n = 5
//Output: [-7,-1,1,3,4]
//Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].

func sumZero(_ n: Int) -> [Int] {
    var result: [Int] = [Int]()
    var i = 0, j = 1
    if n%2 != 0 {
        result.append(0)
        i += 1
    }
    while i < n {
        result.append(contentsOf: [j,-j])
        j += 1
        i += 2
    }
    return result
}
