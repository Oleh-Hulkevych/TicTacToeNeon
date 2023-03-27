//
//  ScoreCellView.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

struct ScoreCellView: View {
    
    var title: String
    
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Text("\(score)")
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(2.5)
            
            Capsule()
                .fill(Color.gray)
                .frame(width: 35, height: 2, alignment: .center)
            
            Text(title)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
        .padding(.all)
        .background(.gray.opacity(0.25))
        .cornerRadius(15)
    }
}

struct ScoreCellView_Previews: PreviewProvider {
    
    @State static var titleText = "Title"
    @State static var score = 999
    
    static var previews: some View {
        ScoreCellView(title: titleText, score: $score)
    }
}
