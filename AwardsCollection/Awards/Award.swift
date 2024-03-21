//
//  Award.swift
//  AwardsCollection
//
//  Created by Serge Broski on 3/21/24.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static var awards: [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 160, height: 160)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView().frame(width: 160, height: 160)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 160, height: 160)),
                title: "Curves View",
                awarded: true
            )
//            Award(
//                awardView: AnyView(HypocycloidView().frame(width: 160, height: 160)),
//                title: "Hypocycloid View",
//                awarded: false
//            )
        ]
    }
}
