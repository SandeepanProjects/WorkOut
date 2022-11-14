//
//  Number of Words Found in Sentences.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

//  Maximum Number of Words Found in Sentences
//Input: sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"]
//Output: 6
//Explanation:
//- The first sentence, "alice and bob love leetcode", has 5 words in total.
//- The second sentence, "i think so too", has 4 words in total.
//- The third sentence, "this is great thanks very much", has 6 words in total.
//Thus, the maximum number of words in a single sentence comes from the third sentence, which has 6 words.

func maxWordsFoundInSentence(_ sentencees: [String]) -> Int {
    var maxCount = 0
    for sentenc in sentencees {
        let tmp = sentenc.components(separatedBy: " ").count
        maxCount = max(tmp,maxCount)
    }
    return maxCount
}
