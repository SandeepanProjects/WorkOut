//
//  number of islands .swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

number of islands

var islands = [  ["1","1","1","1","0"],
                 ["1","1","0","1","0"],
                 ["1","1","0","0","0"],
                 ["0","0","0","0","0"]
] // should be 1 the answer


func numIslands(_ grid: [[Character]]) -> Int {

    var result = 0
    var notGrid = grid
    for row in 0..<grid.count {
        for column in 0..<notGrid[row].count {
            if notGrid[row][column] == "1" {
                result += 1
                islandSearchDFS(&notGrid, row, column)
            }
        }
    }
    return result
}

func islandSearchDFS(_ grid: inout [[Character]],_ row: Int, _ column: Int) {
    if row < 0 || row>=grid.count || column < 0 || column>=grid[row].count || grid[row][column] == "0"{
        return
    } // 1

    grid[row][column] = "0" // visited island //2

    islandSearchDFS(&grid, row-1, column)  //3
    islandSearchDFS(&grid, row+1, column) //3
    islandSearchDFS(&grid, row, column-1) //3
    islandSearchDFS(&grid, row, column+1) //3
}
