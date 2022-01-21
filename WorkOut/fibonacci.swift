//
//  fibonacci.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

func fibonacci(_ number: Int) -> Int {
  if number <= 0 {
    return 0
  }

  if number == 1 || number == 2 {
    return 1
  }

  return fibonacci(number - 1) + fibonacci(number - 2)
}
