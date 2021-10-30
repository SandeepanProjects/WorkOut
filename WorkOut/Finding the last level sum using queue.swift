//
//  Finding the last level sum using queue.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Finding the last level sum using queue

var queue = [TreeNode]()
queue.append(root)
var levelSum = 0
while !queue.isEmpty {
// This would give the number of elements in the current level
var qLength = queue.count
// Important : Reset the last level sum
levelSum = 0
for i in 0..<qLength {
// process the queue elements
}
}
