//
//  PlayerModel.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import Foundation

enum Player {
    case human
    case computer
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}
