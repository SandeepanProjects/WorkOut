//
//  licenseKeyFormatting.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

//licenseKeyFormatting

func licenseKeyFormatting(s: String, k: Int) ->  String {
    let arr = Array(s.uppercased())
    var i = arr.count - 1
    var count = 0
    var result = [Character]()
    
    while i >= 0
    {
        let curr  = arr[i]
        if curr == "-" {
            i -= 1
        } else if count != 0 && count % k == 0 {
            result.insert("-", at: 0)
            count = 0
        } else {
            result.insert(curr, at: 0)
            i -= 1
            count += 1
        }
    }
    return String(result)
}

//        let result = licenseKeyFormatting(s: "5F3Z-2e-9-q", k: 4)
//        print(result)
