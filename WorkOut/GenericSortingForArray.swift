//
//  GenericSortingForArray.swift
//  WorkOut
//
//  Created by sandeepan swain on 05/11/22.
//

import Foundation

// Generic sort String for Array

func sortStringArray<T: Comparable>(_ array: inout [T]) {
    var i = 1
    while i < array.count {
        var x = array[i]
        var j = i - 1
        while j >= 0 && array[j] > x {
            array[j+1] = array[j]
            j -= 1
        }
        array[j+1] = x
        i += 1
    }
}

var myArray : [String] = ["JavaFX", "HBase", "OpenCV", "Java", "Hadoop", "Neo4j"]

//        sortStringArray(&myArray)
//        print(myArray)
