//
//  Sieve of Erathosthenes .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Sieve of Erathosthenes

class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 2 { return 0}
        var nonPrimes = [Bool](repeating:false,count: n)
        nonPrimes[1] = true
        var numNonPrimes = 1
        for i in 2..<n {
            if nonPrimes[i] == true{
                continue
            }
            var j = 2 * i
            while j < n {
                if nonPrimes[j] == false {
                    nonPrimes[j] = true
                    numNonPrimes += 1
                }
                j += i
            }
        }
        return n - 1 - numNonPrimes
    }
}
