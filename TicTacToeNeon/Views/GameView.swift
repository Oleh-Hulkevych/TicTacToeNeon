//
//  ContentView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 26.03.2023.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            BackgroundView()
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    LogoView()
                        .padding(.bottom, 15)
                    LazyVGrid(columns: viewModel.columns, spacing: 5) {
                        ForEach(0..<9) { i in
                            ZStack {
                                GameSquareView(proxy: geometry)
                                PlayerIndicatorView(systemImageName: viewModel.moves[i]?.indicator ?? "")
                            }
                            .onTapGesture {
                                viewModel.processPlayerMove(for: i)
                            }
                        }
                    }
                    .padding(.bottom, 30)
                    ScoresView()
                }
                .disabled(viewModel.isGameboardDisabled)
                .padding()
                .alert(item: $viewModel.alertItem) { alertItem in
                    Alert(title: alertItem.title, message: alertItem .message, dismissButton: .default(alertItem.buttonTilte, action: {
                        viewModel.resetGame()
                    }))
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .preferredColorScheme(.light)
    }
}
