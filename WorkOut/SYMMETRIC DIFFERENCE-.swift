//
//  SYMMETRIC DIFFERENCE-.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

SYMMETRIC DIFFERENCE:

var a1 = [1,2,3,4]
var a2 = [5,6,7,8,13]
var a3 = [9,10,11,12,13,13]

func symmetricDiff(arrays: [[Int]]) -> [Int] {

    var resultDict : [Int:Int] = [:]

    for x in 0..<arrays.count {
        let setTemp = Set<Int>(arrays[x])
        for value in setTemp {
            if resultDict[value] != nil {
                resultDict[value] = resultDict[value]! + 1
            } else {
                resultDict[value] = 1
            }
        }
    }

    return Array<Int>(resultDict.filter({ (element) -> Bool in
        element.value == 1
    }).keys)
}

print(symmetricDiff(arrays: [a1,a2,a3]))




2D ARRAY

var rows = 3
var column = 5
var arrayOfArrayInitialization = [[Int]](repeating: [Int](repeating: 0, count: column), count: rows)
