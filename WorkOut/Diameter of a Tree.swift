//
//  Diameter of a Tree.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Diameter of a Tree

class Solution {
    var diameter : Int = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        dfs(root)
        return diameter
    }
    func dfs(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0}
        let leftLength = dfs(root.left)
        let rightLength = dfs(root.right)
        diameter = max(diameter, leftLength + rightLength)
        return 1 + max(leftLength, rightLength )
    }
}
