//
//  Dados.swift
//  GraoTorradoAmber
//
//  Created by Rafael Schmitt on 27/09/20.
//

import Foundation

var cafes: [Cafe] = load("cafes.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Não foi possível encontrar \(filename) no main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Não foi possível carregar \(filename) do main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Não foi possível fazer o parse de \(filename) como \(T.self):\n\(error)")
    }
}
