//
//  BackgroundView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

struct BackgroundView: View {
    
    private let colors = [
        Color.CustomColors.violet,
        Color.CustomColors.grape,
        Color.CustomColors.lavender,
        Color.CustomColors.grape,
        Color.CustomColors.licorice
    ]
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: colors),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
