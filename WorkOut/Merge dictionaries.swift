//
//  Merge dictionaries.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Merge dictionaries
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
  var newDictionary = dict1
  for (key, value) in dict2 {
    newDictionary[key] = value
  }
  return newDictionary
}
