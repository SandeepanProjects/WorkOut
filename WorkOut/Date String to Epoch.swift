//
//  Date String to Epoch.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Date String to Epoch

func getEpochTimeInterval(dateString:String)-> TimeInterval? {
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = .current
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    return dateFormatter.date(from: dateString)?.timeIntervalSince1970 ?? nil
}
