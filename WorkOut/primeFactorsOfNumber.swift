//
//  primeFactorsOfNumber.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation
import UIKit

extension Math {
  static func primeFactors(of value: Int) -> [Int] {
    var remainingValue = value
    var testFactor = 2
    var primes: [Int] = []
    while testFactor * testFactor <= remainingValue {
      if remainingValue % testFactor == 0 {
        primes.append(testFactor)
        remainingValue /= testFactor
      }
      else {
        testFactor += 1
      }
    }
    if remainingValue > 1 {
      primes.append(remainingValue)
    }
    return primes
  }
}


extension Int {
  func primeFactors() -> [Int] {
    var remainingValue = self
    var testFactor = 2
    var primes: [Int] = []
    while testFactor * testFactor <= remainingValue {
      if remainingValue % testFactor == 0 {
        primes.append(testFactor)
        remainingValue /= testFactor
      }
      else {
        testFactor += 1
      }
    }
    if remainingValue > 1 {
      primes.append(remainingValue)
    }
    return primes
  }
}

//81.primeFactors() // [3, 3, 3, 3]
//18.primeFactors() // [2, 3, 3]
//57.primeFactors() // [3, 19]
