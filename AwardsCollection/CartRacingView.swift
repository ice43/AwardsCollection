//
//  CartRacingView.swift
//  AwardsCollection
//
//  Created by Serge Broski on 3/18/24.
//

import SwiftUI

struct CartRacingView: View {
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                VStack {
                    Image(systemName: "cart.fill")
                        .font(.title)
                        .foregroundStyle(.red)
                    Text("Default")
                }
            }
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

#Preview {
    CartRacingView()
}
