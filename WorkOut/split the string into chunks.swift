//
//  split the string into chunks.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//A method exists on a string named components(separatedBy:) that will split the string into chunks, which are delimited by the given string, and return an array containing the results.

func splitting(_ string: String, delimiter: Character) -> [String] {
  var returnArray: [String] = []
  var lastWordIndex = string.startIndex

  for i in string.indices {
    if string[i] == delimiter {
      let substring = string[lastWordIndex..<i]
      returnArray.append(String(substring))
      lastWordIndex = string.index(after: i)
    }
  }

  // Add the final word
  let substring = string[lastWordIndex..<string.endIndex]
  returnArray.append(String(substring))

  return returnArray
}

let pieces = splitting("Dog,Cat,Badger,Snake,Lion", delimiter: ",")
