//
//  Remove Nth node from LinkedList.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

// Remove Nth node from LinkedList

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let head = head else { return nil}
        var length = 0
        var current : ListNode? = head
        // Count the number of nodes
        while current != nil {
            length += 1
            current = current!.next
        }
        var prev:ListNode?
        current = head
        if n > length {
            return nil
        }
        // Edge Case : First nodes is to be removed. Simply return the next of the head
        if n == length {
            return current!.next
        }
        // For reaching nth node: We need N -1 passes
        var totalPasses = length - n
        for i in 0..<totalPasses{
            prev = current
            current = current!.next
        }
        // Link the prev to the next of current
        prev?.next = current?.next
        return head
    }
}
