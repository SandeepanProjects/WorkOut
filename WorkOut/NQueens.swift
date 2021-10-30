//
//  NQueens.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

NQueens

class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var output = [[String]]()
        var board = Array(repeating: String(repeating: ".", count: n), count: n)
        solve(0,&board,&output)
        return output
    }
    func solve( _ row:Int, _ board: inout [String],_ output: inout [[String]]) {
        if row == board.count{
            output.append(board)
            return
        }
        for col in 0..<board.count{
            if isValid(row,col,board) {
                board[row] = replace(board[row], col, "Q")
                solve(row + 1, &board, &output)
                board[row] = replace(board[row], col, ".")
            }
        }
    }
    func replace(_ myString: String, _ index: Int, _ newChar: Character) -> String {
        var chars = Array(myString) // gets an array of characters
        chars[index] = newChar
        let modifiedString = String(chars)
        return modifiedString
    }
    func isValid(_ row:Int, _ col:Int, _ board:[String]) -> Bool{
        var r = row, c = col
        // col
        while r >= 0 {
            let bRow = board[r]
            if bRow[col] == "Q"{
                return false
            }
            r -= 1
        }
        // Diagonal left
        r = row
        c = col
        while r >= 0 , c >= 0 {
            let bRow = board[r]
            if bRow[c] == "Q"{
                return false
            }
            r -= 1
            c -= 1
        }
        // Diagonal Right
        r = row
        c = col
        while r >= 0 , c < board.count {
            let bRow = board[r]
            if bRow[c] == "Q"{
                return false
            }
            r -= 1
            c += 1
        }
        return true
    }
}
extension String {
subscript(idx: Int) -> String {
String(self[index(startIndex, offsetBy: idx)])
}
}
