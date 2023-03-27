//
//  Alerts.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 26.03.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTilte: Text
}

struct AlertContext {
    
    static let humanWin = AlertItem(
        title: Text("You Win! 🥳"),
        message: Text("You are so smart!"),
        buttonTilte: Text("Hell year!"))
    
    static let computerWin = AlertItem(
        title: Text("You Lost! 😟"),
        message: Text("This time computer wins!"),
        buttonTilte: Text("Rematch!"))
    
    static let draw = AlertItem(
        title: Text("Draw! 😲"),
        message: Text("What a battle of wits we have here!"),
        buttonTilte: Text("Try Again"))
}
