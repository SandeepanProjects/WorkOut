//
//  minimum and maximum.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Find the minimum and maximum
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
  if numbers.isEmpty {
    return nil
  }

  var min = numbers[0]
  var max = numbers[0]
  for number in numbers {
    if number < min {
      min = number
    }
    if number > max {
      max = number
    }
  }
  return (min, max)
}
