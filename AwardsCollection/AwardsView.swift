//
//  AwardsView.swift
//  AwardsCollection
//
//  Created by Serge Broski on 3/18/24.
//

import SwiftUI

struct AwardsView: View {
    private let awards = Award.awards.filter { $0.awarded }
    private let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(awards, id: \.title) { award in
                        VStack {
                            award.awardView
                            Text(award.title)
                        }
                    }
                }
            }
            .navigationTitle("Awards")
        }
    }
}

#Preview {
    AwardsView()
}
