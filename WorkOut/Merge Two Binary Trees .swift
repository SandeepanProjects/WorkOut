//
//  Merge Two Binary Trees .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Merge Two Binary Trees


class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        guard let root1 = root1 else { // Step 1
            return root2
        }
        guard let root2 = root2 else { // Step 2
            return root1
        }

        root1.val += root2.val // Step 3

        root1.left = mergeTrees(root1.left, root2.left) // Step 4
        root1.right = mergeTrees(root1.right, root2.right) // Step 5

        return root1 // Step 6
    }
}


