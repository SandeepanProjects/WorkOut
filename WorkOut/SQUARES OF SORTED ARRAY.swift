//
//  SQUARES OF SORTED ARRAY.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

SQUARES OF SORTED ARRAY —

func sortedSquares(_ nums: [Int]) -> [Int] {
    var answer = [Int]()
    var leftPointer = 0 //1
    var rightPointer =  nums.count - 1 //1

    while leftPointer <= rightPointer { //2
        if (nums[leftPointer] * nums[leftPointer] > nums[rightPointer] * nums[rightPointer]) { //3
            answer.append(nums[leftPointer] * nums[leftPointer])
            leftPointer += 1
        } else {
            answer.append(nums[rightPointer] * nums[rightPointer])
            rightPointer -= 1
        }
    }
    return answer.reversed() //4
}
