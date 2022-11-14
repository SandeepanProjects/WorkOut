//
//  Students Doing Homework.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Number of Students Doing Homework at a Given Time
//Input: startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
//Output: 1
//Explanation: We have 3 students where:
//The first student started doing homework at time 1 and finished at time 3 and wasn't doing anything at time 4.
//The second student started doing homework at time 2 and finished at time 2 and also wasn't doing anything at time 4.
//The third student started doing homework at time 3 and finished at time 7 and was the only student doing homework at time 4.

func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    var i = 0, count = 0
    let totalStudents = startTime.count
    while i < totalStudents {
        let startTime = startTime[i]
        let endTime  = endTime[i]
        if (startTime <= endTime && queryTime <= endTime) {
            count += 1
        }
        i += 1
    }
    return count
}
