//
//  Deepest Leaves using DFS recursion.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//Deepest Leaves using DFS recursion

class Solution {
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0}
        let height = getTreeHeight(root)
        return getRecursiveSum(root,height)
    }
    func getTreeHeight(_ root:TreeNode?) -> Int {
        guard let root = root else { return 0}
        return 1 + max(getTreeHeight(root.left), getTreeHeight(root.right))
    }
    func getRecursiveSum(_ root:TreeNode?, _ level: Int) -> Int {
        guard let root = root else { return 0}
        if level == 1 {
            return root.val
        }
        else{
            return getRecursiveSum(root.left, level - 1) + getRecursiveSum(root.right, level - 1)
        }
    }
}
