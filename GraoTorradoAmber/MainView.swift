//
//  MainView.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 26/09/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack(spacing: 20) {
                    CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: 500)
                    CardView(nomeCafe: "Pike Place Roast", marca: "STARBUCKS", nomeImagem: "SegundoCafe", tamanho: 500)
                    CardView(nomeCafe: "Caffè Verona", marca: "STARBUCKS", nomeImagem: "TerceiroCafe", tamanho: 500)
                }
                HStack(spacing: 20) {
                    CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: 100)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
