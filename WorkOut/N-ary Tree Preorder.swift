//
//  N-ary Tree Preorder.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// N-ary Tree Preorder

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return []}
        var output = [Int]()
        var stack = [Node]()
        stack.append(root)
        while !stack.isEmpty {
            let node = stack.last!
            stack.removeLast()
            output.append(node.val)
            stack.append(contentsOf: node.children.reversed())
        }
        return output
    }
}
