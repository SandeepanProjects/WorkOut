//
//  number is prime.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//determine whether or not a number is prime
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
  number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
  if number < 0 {
    return false
  }
  
  /*
   We handle these cases up front because we want to make sure the range 2...root (used below) is valid, which is the case only when root >= 2, so for numbers >= 4.
   */
  if number <= 3 {
    return true
  }

  let doubleNumber = Double(number)
  let root = Int(doubleNumber.squareRoot())
  for divisor in 2...root {
    if isNumberDivisible(number, by: divisor) {
      return false
    }
  }
  return true
}
//isPrime(6)
//isPrime(13)
//isPrime(8893)
