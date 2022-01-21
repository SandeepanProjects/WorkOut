//
//  individual word reversed.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation


//Write a function which takes a string and returns a version of it with each individual word reversed.

func reversedByWord(sentence: String) -> String {
  var reversedWords = ""
  var lastWordIndex = sentence.startIndex

  for i in sentence.indices {
    if sentence[i] == " " {
      let substring = sentence[lastWordIndex..<i]
      reversedWords += substring.reversed() + " "
      lastWordIndex = sentence.index(after: i)
    }
  }

  // Add the final word
  let substring = sentence[lastWordIndex..<sentence.endIndex]
  reversedWords += substring.reversed()

  return reversedWords
}

let reversed = reversedByWord(sentence: "The quick brown fox jumps over the lazy dog")
