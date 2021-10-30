//
//  Binary Tree Level Order Traversal.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//Binary Tree Level Order Traversal


class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return []}
        var queue = [TreeNode]()
        var output = [[Int]]()
        queue.append(root)
        while queue.isEmpty == false {
            // start new level
            // number of elements in the current level
            var levelCount = queue.count
            var levelNodes = [Int]()
            while levelCount > 0 {
                let node = queue.first!
                queue.removeFirst()
                levelCount -= 1
                levelNodes.append(node.val)
                // Add Left child node
                if let left = node.left{
                    queue.append(left)
                }
                // Add right child node
                if let right = node.right{
                    queue.append(right)
                }
            }
            // Add nodes by level
            output.append(levelNodes)
        }
        return output
    }
}
