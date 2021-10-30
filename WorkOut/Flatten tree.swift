//
//  Flatten tree.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Flatten tree

class Solution {
    func flatten(_ root: TreeNode?) {
        guard let root = root else { return }
        flatten(root.left)
        flatten(root.right)
        if let leftSubtree = root.left {
            var current = leftSubtree
            while current.right != nil {
                current = current.right!
            }
            let rightSubtree = root.right
            root.right = leftSubtree
            current.right = rightSubtree
            root.left = nil
        }
    }
}
