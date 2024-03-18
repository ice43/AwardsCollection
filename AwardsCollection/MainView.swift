//
//  MainView.swift
//  AwardsCollection
//
//  Created by Serge Broski on 3/18/24.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { awardIsShowing.toggle() }) {
                HStack {
                    if awardIsShowing {
                        Text("Hide award")
                        Image(systemName: "chevron.up.square")
                    } else {
                        Text("Show award")
                        Image(systemName: "chevron.down.square")
                    }
                }
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

#Preview {
    MainView()
}
