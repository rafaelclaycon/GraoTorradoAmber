//
//  CardView.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 26/09/20.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("PrimeiroCafe")
                .resizable()
            
            LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading) {
                Spacer()
                Text("STARBUCKS")
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                    //.opacity(0.9)
                Text("House Blend")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
        }
        .cornerRadius(30)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
