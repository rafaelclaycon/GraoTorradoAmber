//
//  CardButtonStyle.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 27/09/20.
//

import SwiftUI

struct CardStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.7 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.97 : 1.0)
    }
}
