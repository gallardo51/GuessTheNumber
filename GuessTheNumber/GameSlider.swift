//
//  GameSlider.swift
//  GuessTheNumber
//
//  Created by Александр Соболев on 26.04.2024.
//

import SwiftUI

struct GameSlider: View {
    
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                CustomSlider(value: $currentValue, alpha: alpha, color: color)
                Text("100")
            }
            
            .padding()
        }
    }
}

#Preview {
    GameSlider(
        currentValue: .constant(50),
        targetValue: 100,
        color: .red,
        alpha: 100)
}
