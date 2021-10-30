//
//  LinkedList to Binary Search Tree.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

LinkedList to Binary Search Tree

class Solution {
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        var sortedList = [Int]()
        var current:ListNode? = head
        while let node = current {
            sortedList.append(node.val)
            current = node.next
        }
        let rootNode = partition_helper(sortedList, 0, sortedList.count - 1)
        return rootNode
    }
    func partition_helper(_ list:[Int], _ left: Int, _ right:Int) -> TreeNode? {
        guard left <= right else { return nil}
        let mid = left + (right - left ) / 2
        let node = TreeNode(list[mid])
        node.left = partition_helper(list, left, mid - 1)
        node.right = partition_helper(list,mid + 1, right)
        return node
    }
}
