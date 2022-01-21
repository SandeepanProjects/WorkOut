//
//  numberOfWords in string.swift
//  WorkOut
//
//  Created by Apple on 21/01/22.
//

import Foundation


//Write a function that tells you how many words there are in a string. Do it without splitting the string.

func numberOfWords(in sentence: String) -> Int {
  var count = 0
  var inWord = false

  for character in sentence {
    if character == " " {
      if inWord {
        count += 1
      }
      inWord = false
    } else {
      inWord = true
    }
  }

  // We need to add 1 to count the final word if there was at least 1 character
  if inWord {
    count += 1
  }

  return count
}

let wordCount = numberOfWords(in: "The quick brown fox jumps over the lazy dog")
//print(wordCount)
