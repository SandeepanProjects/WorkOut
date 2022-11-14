//
//  defangIPAddr.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation


//defang ip address
func defangIPAddr( _ address: String) -> String {
    var arr: [Character] = Array(address)
    var output: String = ""
    var index: Int = 0
    while index < arr.count {
        if arr[index] == "." {
            output = output + "[.]"
        } else {
            output = output + "\(arr[index])"
        }
        index += 1
    }
     return output
}
