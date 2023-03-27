//
//  PlayerIndicatorView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

struct PlayerIndicatorView: View {
    
    var systemImageName: String
    
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 45, height: 45)
            .foregroundColor(.white)
            .glow()
    }
}

struct PlayerIndicatorView_Previews: PreviewProvider {

    static var previews: some View {
        PlayerIndicatorView(systemImageName: "circle")
            .preferredColorScheme(.dark)
    }
}
