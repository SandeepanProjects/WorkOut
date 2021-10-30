//
//  max_product_word_lengths.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

max_product_word_lengths

class Solution {
    func maxProduct(_ words: [String]) -> Int {
        var maxLength = 0
        var bitMap = [Int:Int]()
        for word in words{
            let bitMask = getBitMask(word)
            // Multiple words can have same bitmasks (a , aaaaaa).
            // We need to keep the max length only
            if let currentLength = bitMap[bitMask] {
                bitMap[bitMask] = max(currentLength, word.count)
            }
            else{
                bitMap[bitMask] = word.count
            }
        }
        for i in bitMap.keys{
            for j in bitMap.keys{
                if i & j == 0 {
                    maxLength = max(maxLength, bitMap[i]!*bitMap[j]!)
                }
            }
        }
        return maxLength
    }
    func getBitMask(_ str:String) -> Int {
        var bitMask = 0
        for char in str{
            let maskOffset = getAsciiOffset(char)
            bitMask |= 1 << maskOffset
        }
        return bitMask
    }
    func getAsciiOffset(_ char:Character) -> Int{
        return Int(char.asciiValue!) - 97
    }
}
