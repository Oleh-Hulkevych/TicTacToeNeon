//
//  GlowEffectExtension.swift
//  TicTacToeNeon
//
//  Created by Hulkevych on 27.03.2023.
//

import SwiftUI

extension View {
    
    func addGlowEffect(color1:Color, color2:Color, color3:Color) -> some View {
        self
            .foregroundColor(Color(hue: 0.5, saturation: 0.8, brightness: 1))
            .background {
                self
                    .foregroundColor(color1).blur(radius: 0).brightness(0.8)
            }
            .background {
                self
                    .foregroundColor(color2).blur(radius: 4).brightness(0.35)
            }
            .background {
                self
                    .foregroundColor(color3).blur(radius: 2).brightness(0.35)
            }
            .background {
                self
                    .foregroundColor(color3).blur(radius: 12).brightness(0.35)
                
            }
    }
    
    func glow() -> some View {
        self
            .foregroundColor(Color(hue: 0.5, saturation: 0.5, brightness: 1))
            .background {
                self
                    .foregroundColor(Color(hue: 207/360, saturation: 0.7, brightness: 0.94))
                    .blur(radius: 4)
            }
            .background {
                self
                    .foregroundColor(Color(hue: 214/360, saturation: 0.8, brightness: 1))
                    .blur(radius: 2)
            }
            .background {
                self
                    .foregroundColor(Color(hue: 214/360, saturation: 0.8, brightness: 0.94))
                    .blur(radius: 12)
            }
    }
}
