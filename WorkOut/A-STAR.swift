//
//  A-STAR.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

A-STAR

enum Direction { // mark 1
    case up, down, left, right
}

struct AStarPuzzle { // mark 2
    var heuristics: Int
    var boardPathStateList: [[[String]]]
}

class PuzzleSolver { // mark 3
    var state: [[String]] = []
    let endState = [["1","2","3"], // mark 4
                   ["4","5","6"],
                   ["7","8","0"]]

    func availableMoves(state: [[String]]) -> [[[String]]] { // mark 5
        var possibleBoardStates: [[[String]]] = []
        let tmpState = state

        if let i = tmpState.firstIndex(where: { $0.contains("0") }),
           let j = tmpState[i].firstIndex(of: "0") {
            if i < 2 {
                possibleBoardStates += (movePieceInDirection(.down, board: state, piece: (i, j)))
            }

            if i > 0 {
                possibleBoardStates += (movePieceInDirection(.up, board: state, piece: (i, j)))
            }

            if j < 2 {
                possibleBoardStates += (movePieceInDirection(.right, board: state, piece: (i, j)))
            }

            if j > 0 {
                possibleBoardStates += (movePieceInDirection(.left, board: state, piece: (i, j)))
            }
        }

        return possibleBoardStates
    }

    func movePieceInDirection(_ direction: Direction, board: [[String]], piece: (Int, Int)) -> [[[String]]] { // mark 6
        var movements: [[[String]]] = []
        switch direction {
        case .up:
            var boardCopy = board
            let tmp = boardCopy[piece.0][piece.1]
            boardCopy[piece.0][piece.1] = boardCopy[piece.0 - 1][piece.1]
            boardCopy[piece.0 - 1][piece.1] = tmp
            movements.append(boardCopy)
        case .down:
            var boardCopy = board
            let tmp = boardCopy[piece.0][piece.1]
            boardCopy[piece.0][piece.1] = boardCopy[piece.0 + 1][piece.1]
            boardCopy[piece.0 + 1][piece.1] = tmp
            movements.append(boardCopy)
        case .left:
            var boardCopy = board
            let tmp = boardCopy[piece.0][piece.1]
            boardCopy[piece.0][piece.1] = boardCopy[piece.0][piece.1 - 1]
            boardCopy[piece.0][piece.1 - 1] = tmp
            movements.append(boardCopy)
        case .right:
            var boardCopy = board
            let tmp = boardCopy[piece.0][piece.1]
            boardCopy[piece.0][piece.1] = boardCopy[piece.0][piece.1 + 1]
            boardCopy[piece.0][piece.1 + 1] = tmp
            movements.append(boardCopy)
        }

        return movements
    }

    func misplacedPiecesHeuristic(state: [[String]]) -> Int { // mark 7
        var misplaced = 0
        var comparator = 1
        for line in state {
            for number in line {
                if number != "\(comparator)" {
                    misplaced += 1
                }
                comparator += 1
            }
        }

        return misplaced
    }

    func aStarSearch(start: [[String]]) -> AStarPuzzle { // mark 8

        var explored = [[[String]]]() // mark 9
        var pathList = [AStarPuzzle(heuristics: misplacedPiecesHeuristic(state: start), boardPathStateList: [start])] // mark 10
        var path: AStarPuzzle = AStarPuzzle(heuristics: 1, boardPathStateList: [])

        while true { // mark 11
            let currentBestHeuristicIndex = pathList.indices.reduce(0, { pathList[$1].heuristics < pathList[$0].heuristics ? $1 : $0 }) // mark 12

            path = pathList.remove(at: currentBestHeuristicIndex) // mark 13
            //pathList.removeAll() to greedy solve with more steps but much less space
            let finalStateBoardFromBestHeuristic = path.boardPathStateList.last!
            if explored.contains(finalStateBoardFromBestHeuristic) { continue } // mark 14
            for movement in availableMoves(state: finalStateBoardFromBestHeuristic) { // mark 15
                if explored.contains(movement) { continue }
                let heuristic = path.heuristics + misplacedPiecesHeuristic(state: movement) + misplacedPiecesHeuristic(state: finalStateBoardFromBestHeuristic) // mark 16
                let new = path.boardPathStateList + [movement]
                pathList.append(AStarPuzzle(heuristics: heuristic, boardPathStateList: new))// mark 17
            }
            explored.append(finalStateBoardFromBestHeuristic)
            if finalStateBoardFromBestHeuristic == endState { // mark 18
                break
            }
        }

        return path
    }
}


// mark 19

var board: [[String]] =  [["1","5","2"],
                          ["4","8","3"],
                          ["7","0","6"]] // easy board
//var hardBoard: [[String]] =  [["3","2","1"],
//                          ["4","6","5"],
//                          ["7","0","8"]]

let puzzleSolver = PuzzleSolver()
let puzzleSolved = puzzleSolver.aStarSearch(start: board)

let path = puzzleSolved.boardPathStateList

for index in puzzleSolved.boardPathStateList.indices {
    print("State Number \(index + 1)")
    path[index].forEach({print($0)})
}
