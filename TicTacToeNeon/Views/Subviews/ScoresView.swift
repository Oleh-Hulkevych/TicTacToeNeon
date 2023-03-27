//
//  ScoresView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

struct ScoresView: View {
    
    @ObservedObject private var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            HStack {
                ScoreCellView(title: "Wins", score: $viewModel.winCount)
                ScoreCellView(title: "Lost", score: $viewModel.lostCount)
                ScoreCellView(title: "Draw", score: $viewModel.drawCount)
            }
        }
        .padding(.all, 10)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.CustomColors.lavender.opacity(0.5), lineWidth: 5)
        )
        .shadow(color: Color.CustomColors.darkPurple.opacity(0.5), radius: 5, x: 0, y: 2)
    }
}

struct ScoresView_Previews: PreviewProvider {
    static var previews: some View {
        ScoresView()
            .preferredColorScheme(.dark)
    }
}
