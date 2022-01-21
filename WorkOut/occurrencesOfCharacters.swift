//
//  occurrencesOfCharacters.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Count the characters
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    if let count = occurrences[character] {
      occurrences[character] = count + 1
    } else {
      occurrences[character] = 1
    }
  }
  return occurrences
}
