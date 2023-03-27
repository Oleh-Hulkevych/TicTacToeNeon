//
//  GameSquareView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

struct GameSquareView: View {
    
    var proxy: GeometryProxy
    
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(Color.CustomColors.lavender.opacity(0.75), lineWidth: 5)
                .background(Circle().foregroundColor(Color.CustomColors.violet.opacity(1)))
                .padding(.all, 5)
                .opacity(0.9)
                .frame(width: proxy.size.width / 3 - 15,
                       height: proxy.size.width / 3 - 15)
                .shadow(color: Color.CustomColors.darkPurple.opacity(0.5), radius: 5, x: 0, y: 2)
        }
    }
}

struct GameSquareView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            GameSquareView(proxy: proxy)
        }
    }
}
