//
//  Deepest Level sum with BFS using Queue.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Deepest Level sum with BFS using Queue

class Solution {
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0}
        var queue = [TreeNode]()
        queue.append(root)
        var levelSum = 0
        while !queue.isEmpty {
            var qLength = queue.count
            // Important : Reset the last level sum
            levelSum = 0
            for i in 0..<qLength {
                // queue
                let node = queue.removeFirst()
                levelSum += node.val
                if let left = node.left{
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        // This would only have the last level nodes sum
        return levelSum
    }
}
