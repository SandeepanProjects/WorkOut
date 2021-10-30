//
//  Beautiful Arrangement .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
Beautiful Arrangement

class Solution {
    func constructArray(_ n: Int, _ k: Int) -> [Int] {
        var result = Array(repeating:0, count:n)
        var left = 1, right = k + 1, i = 0
        // Pass 1 : Interleaving left and right corners
        while i <= k {
            if i % 2 == 0 {
                result[i] = left
                left += 1
            }
            else{
                result[i] = right
                right -= 1
            }
            i += 1
        }
        // Pass 2: appending left over values incrementally
        for i in k + 1 ..< n {
            result[i] = i + 1
        }
        return result
    }
}


