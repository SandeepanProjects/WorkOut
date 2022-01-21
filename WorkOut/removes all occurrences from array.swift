//
//  removes all occurrences from array.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Write a function that removes all occurrences of a given integer from an array of integers.

func removing(_ item: Int, from array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for candidateItem in array {
    if candidateItem != item {
      newArray.append(candidateItem)
    }
  }
  return newArray
}
