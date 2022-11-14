//
//  Robot Return to Origin.swift
//  MinCostPath
//
//  Created by sandeepan swain on 14/11/22.
//

import Foundation

// Robot Return to Origin
//Input: moves = "UD"
//Output: true
//Explanation: The robot moves up once, and then down once. All moves have the same magnitude, so it ended up at the origin where it started. Therefore, we return true.
func judgeCircle(_ moves: String) -> Bool {
       var currentX = 0
       var currentY = 0

       for move in moves {
           if move == "U" {
               currentY += 1
           } else if move == "D" {
               currentY -= 1
           } else if move == "L" {
               currentX -= 1
           } else if move == "R" {
               currentX += 1
           }
       }

       if currentX == 0 && currentY == 0 {
           return true
       } else {
           return false
       }
   }
