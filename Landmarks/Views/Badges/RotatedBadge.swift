//
//  RotatedBadge.swift
//  Landmarks
//
//  Created by Kevin Dinicola on 10/5/23.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}



#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
