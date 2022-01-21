//
//  values of a dictionary are unique.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Write a function that returns true if all of the values of a dictionary are unique
func isInvertible(_ dictionary: [String: Int]) -> Bool {
  var seenValues: Set<Int> = []
  for value in dictionary.values {
    if seenValues.contains(value) {
      return false  // duplicate value detected
    }
    seenValues.insert(value)
  }
  return true
}
