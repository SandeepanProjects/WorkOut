//
//  count of each character in the string.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Write a function that takes a string and prints out the count of each character in the string.

func printCharacterCount(for string: String) {
  guard string.count > 0 else { return }

  var counts: [Character: Int] = [:]

  for i in string {
    counts[i, default: 0] += 1
  }

  let sortedKeys = counts.keys.sorted { counts[$0]! > counts[$1]! }

  let max = counts[sortedKeys.first!]!

  for key in sortedKeys {
    let value = counts[key]!
    let widthOfHashes = (value * 20) / max
    let hashes = String(repeating: "#", count: widthOfHashes)
    print("\(key) : \(hashes) \(value)")
  }
}
