//
//  Find and Replace Pattern.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation


Find and Replace Pattern


Input: words = ["abc","deq","mee","aqq","dkd","ccc"], pattern = "abb"
Output: ["mee","aqq”]

class Solution {
func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
var output = [String]()
for word in words {
if isMatch(word,pattern) {
output.append(word)
}
}
return output
}
func isMatch(_ word:String, _ pattern:String) -> Bool {
var mapW = [Character:Character]()
var mapP = [Character:Character]()
for (w,p) in zip(word,pattern){
if mapW[w] == nil{
mapW[w] = p
}
if mapP[p] == nil{
mapP[p] = w
}
if mapW[w] != p || mapP[p] != w {
return false
}
}
return true
}
}
