//
//  Power of Three.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
// Power of Three


class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        var n = n
        while n >= 3 {
            if n % 3 != 0 {
                return false
            }
            n = n / 3
        }
        return n == 1
    }
}
