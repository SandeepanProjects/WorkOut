//
//  UniqueEmailAddress.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// UniqueEmailAddress

func getUniqueEmailAddress(_ list: [String]) -> Int {
    if list.isEmpty {return -1}
    var uniqueEmails = Set<String>()
    print(list)
    for item in list  {
        let emailParts = item .split(separator: "@").map {String($0)}
        var localName = emailParts[0]
        var domainName = emailParts[1]
        
        localName = localName.replacingOccurrences(of: ".", with: "")
        if let idx = localName .range(of: "+") {
            localName = String(localName[..<idx.lowerBound])
        }
        uniqueEmails.insert("\(localName)@\(domainName)")
    }
    print(uniqueEmails)
    return uniqueEmails.count
}


//let arr = ["test.email+alex@leetcode.com",
//            "test.e.mail+bob.cathy@leetcode.com",
//            "testemail+david@lee.tcode.com"]
//let test = getUniqueEmailAddress(arr)
//print(test)
