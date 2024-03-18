//
//  GradientRectangles.swift
//  AwardsCollection
//
//  Created by Serge Broski on 3/18/24.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: .bottomLeading,
                                endPoint: .topTrailing
                            )
                        )
                        .rotationEffect(.degrees(Double(iteration) * 60))
                        .scaleEffect(0.7)
                }
                
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
        }
    }
}

#Preview {
    GradientRectangles()
        .frame(width: 250, height: 250)
}
