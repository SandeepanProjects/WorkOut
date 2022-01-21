//
//  Reverse words in string.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation

//Write a function that takes a string which looks like "Galloway, Matt" and returns one which looks like "Matt Galloway", i.e., the string goes from "<LAST_NAME>, <FIRST_NAME>" to "<FIRST_NAME> <LAST_NAME>".

func sanitized(name: String) -> String? {
  guard let indexOfComma = name.firstIndex(of: ",") else {
    return nil
  }

  let lastNameSubstring = name[..<indexOfComma]
  let firstNameSubstring = name[indexOfComma...].dropFirst(2)

  return firstNameSubstring + " " + lastNameSubstring
}

//if let sanitizedName = sanitized(name: "Galloway, Matt") {
//  print(sanitizedName)
//}
