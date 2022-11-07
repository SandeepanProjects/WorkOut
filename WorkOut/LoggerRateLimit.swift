//
//  LoggerRateLimit.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

//Logger rate limit

class Logger { // Logger rate limit
    private var map = [String: Int]()
    @discardableResult func shouldPrintMessage(timeStamp: Int, message: String) -> Bool {
        if let val = map[message] {
            let diff = timeStamp - val
            if diff >= 10 {
                map[message] = timeStamp
                return true
            }
            return false
        }
        map[message] = timeStamp
        return true
    }
}


//        let logger = Logger()
//        print(logger.shouldPrintMessage(timeStamp: 1, message: "foo"))
//        print(logger.shouldPrintMessage(timeStamp: 2, message: "bar"))
//        print(logger.shouldPrintMessage(timeStamp: 3, message: "foo"))
//        print(logger.shouldPrintMessage(timeStamp: 8, message: "bar"))
//        print(logger.shouldPrintMessage(timeStamp: 10, message: "foo"))
//        print(logger.shouldPrintMessage(timeStamp: 11, message: "foo"))
        
