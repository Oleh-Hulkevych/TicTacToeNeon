//
//  LogoView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .opacity(0.75)
                .shadow(color: Color.CustomColors.darkPurple.opacity(1), radius: 20, x: 0, y: 2)
        }
        .padding(.bottom, 5)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .preferredColorScheme(.dark)
    }
}
