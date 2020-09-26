//
//  ContentView.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 26/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                CardView()
                    .frame(width: 500, height: 500, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
