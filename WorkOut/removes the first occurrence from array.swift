//
//  removes the first occurrence from array.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation



//Write a function that removes the first occurrence of a given integer from an array of integers
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
  var result = array
  if let index = array.firstIndex(of: item) {
    result.remove(at: index)
  }
  return result
}
