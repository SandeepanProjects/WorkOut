//
//  Partition List .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//Partition List

class Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        guard let head = head else { return nil }
        let firstList = ListNode(-1)
        let secondList = ListNode(-1)
        var ptr1 = firstList, ptr2 = secondList
        var current:ListNode? = head
        while current != nil {
            let val = current!.val
            print(val)
            if val < x {
                ptr1.next = current
                ptr1 = current!
            }
            else{
                ptr2.next = current
                ptr2 = current!
            }
            current = current?.next
        }
        ptr1.next = secondList.next
        ptr2.next = nil
        return firstList.next
    }
}
