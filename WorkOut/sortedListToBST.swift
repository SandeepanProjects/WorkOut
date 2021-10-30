//
//  sortedListToBST.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// sortedListToBST

class Solution {
    var current:ListNode?
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        var count = 0
        var curr: ListNode? = head
        while curr != nil {
            count += 1
            curr = curr?.next
        }
        current = head
        let rootNode = partition_helper(1,count)
        return rootNode
    }
    func partition_helper(_ left: Int, _ right:Int) -> TreeNode? {
        guard left <= right else { return nil}
        let mid = left + (right - left ) / 2
        let node = TreeNode()
        // Inorder : Left -> Root -> Right
        node.left = partition_helper(left, mid - 1)
        node.val = current!.val
        // Move the list pointer
        current = current?.next
        node.right = partition_helper(mid + 1, right)
        return node
    }
}
