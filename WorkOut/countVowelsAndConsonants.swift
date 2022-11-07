//
//  countVowelsAndConsonants.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

//countVowelsAndConsonants

func countVowelsAndConsonants(string: String) -> (vowels:Int?, consonants: Int?) {
    let onlyLetters = string.lowercased().filter{$0 >= "a" && $0 <= "z"}
    let vowels = onlyLetters.filter{"aeiou".contains($0)}
    return (vowels: vowels.count, consonants: onlyLetters.count - vowels.count)
}


//        let result = vowelsAndConsonants(string: "algorithms in swift..????>>>")
//        print(result)
