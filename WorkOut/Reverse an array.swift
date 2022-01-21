//
//  Reverse an array.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

func reversed(_ array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for item in array {
    newArray.insert(item, at: 0)
  }
  return newArray
}
