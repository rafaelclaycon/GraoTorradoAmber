//
//  MainView.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 26/09/20.
//

import SwiftUI

struct MainView: View {
    let firstRowSize = 370
    let secondRowSize = 220
    
    var body: some View {
        TabView {
            VStack(alignment: .leading) {
                Text("Cafés  ☕️")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading, 20)
                    .padding(.top, 20)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        HStack {
                            Button(action: {}, label: {
                                Text("Button")
                            })
                            CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: firstRowSize)
                            CardView(nomeCafe: "Pike Place Roast", marca: "STARBUCKS", nomeImagem: "SegundoCafe", tamanho: firstRowSize)
                            CardView(nomeCafe: "Caffè Verona", marca: "STARBUCKS", nomeImagem: "TerceiroCafe", tamanho: firstRowSize)
                        }
                        HStack {
                            CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: secondRowSize)
                        }
                    }
                }
            }
            .tabItem {
                Image(systemName: "heart")
                Text("Cafés")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
