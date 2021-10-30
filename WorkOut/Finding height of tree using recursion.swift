//
//  Finding height of tree using recursion.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//Finding height of tree using recursion

func getTreeHeight(_ root:TreeNode?) -> Int {
    guard let root = root else { return 0}
    return 1 + max(getTreeHeight(root.left), getTreeHeight(root.right))
}

