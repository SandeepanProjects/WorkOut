//
//  Flatten Nested List Iterator Solution.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Flatten Nested List Iterator Solution

class NestedIterator {
    private var list:[Int]
    private var currentIndex: Int
    init(_ nestedList: [NestedInteger]) {
        self.list = []
        currentIndex = 0
        flatten(nestedList)
    }
    func flatten(_ nestedList: [NestedInteger]) {
        for element in nestedList {
            print(element)
            if element.isInteger() {
                list.append(element.getInteger())
            }
            else{
                flatten(element.getList())
            }
        }
    }
    func next() -> Int {
        defer {
            currentIndex += 1
        }
        return list[currentIndex]
    }
    func hasNext() -> Bool {
        return currentIndex < list.count
    }
}
