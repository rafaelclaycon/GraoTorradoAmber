//
//  MainViewViewModel.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 27/09/20.
//

import Foundation

class MainViewViewModel: ObservableObject {
    @Published var cafesEmDestaque: [Cafe]
    
    init(cafes: [Cafe]) {
        self.cafesEmDestaque = cafes
    }
}
