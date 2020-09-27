//
//  CardView.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 26/09/20.
//

import SwiftUI

struct CardView: View {
    @State var nomeCafe: String
    @State var marca: String
    @State var nomeImagem: String
    @State var tamanho: Int
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(nomeImagem)
                .resizable()
                //.aspectRatio(contentMode: .fill)
            
            LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading) {
                Spacer()
                Text(marca)
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                Text(nomeCafe)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
        }
        .frame(width: CGFloat(tamanho), height: CGFloat(tamanho), alignment: .center)
        //.clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)))
        .cornerRadius(25)
        //.padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: 500)
    }
}
