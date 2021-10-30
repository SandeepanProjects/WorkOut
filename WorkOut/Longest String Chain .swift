//
//  Longest String Chain .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Longest String Chain

class Solution {
    func longestStrChain(_ words: [String]) -> Int {
        guard words.count > 1 else { return words.count }
        var map = [String:Int]()
        var maxLength = 0
        let wordSet = Set(words)
        for word in wordSet{
            let chainLength = dfs(wordSet, &map, word)
            maxLength = max(chainLength, maxLength)
        }
        return maxLength
    }
    func dfs(_ words:Set<String>, _ map :inout [String:Int], _ str:String) -> Int {
        if let cachedLength = map[str] {
            return cachedLength
        }
        var maxLength = 1
        for i in 0..<str.count{
            var word = str
            let index = word.index(word.startIndex,offsetBy: i)
            word.remove(at:index)
            if words.contains(word){
                let currentLength = 1 + dfs(words,&map, word)
                maxLength = max(maxLength, currentLength)
            }
        }
        map[str] = maxLength
        return maxLength
    }
}
