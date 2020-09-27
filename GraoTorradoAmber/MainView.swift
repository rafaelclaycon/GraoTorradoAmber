//
//  MainView.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 26/09/20.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = MainViewViewModel(cafes: cafes)
    
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
                        HStack(spacing: 0) {
                            Button(action: {
                                
                            }) {
                                CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: firstRowSize)
                            }
                            .buttonStyle(CardStyle())
                            
                            Button(action: {
                                
                            }) {
                                CardView(nomeCafe: "Pike Place Roast", marca: "STARBUCKS", nomeImagem: "SegundoCafe", tamanho: firstRowSize)
                            }
                            .buttonStyle(CardStyle())
                            
                            Button(action: {
                                
                            }) {
                                CardView(nomeCafe: "Caffè Verona", marca: "STARBUCKS", nomeImagem: "TerceiroCafe", tamanho: firstRowSize)
                            }
                            .buttonStyle(CardStyle())
                        }
                        .padding(.bottom, 10)
                        
                        HStack {
                            Button(action: {
                                
                            }) {
                                CardView(nomeCafe: "House Blend", marca: "STARBUCKS", nomeImagem: "PrimeiroCafe", tamanho: secondRowSize)
                            }
                        }
                    }
                }
                .padding(.leading, 20)
                .padding(.bottom, 10)
            }
            .tabItem {
                Image(systemName: "heart.fill")
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
