//
//  Webservice.swift
//  recipes
//
//  Created by Derian Escalante on 12/12/21.
//

import Foundation

enum NetworkError: Error {
    case BadRequest
    case decodingError
}

class Webservice{
    
    func get<T: Decodable>(url: URL, parse: (Data) -> T?) async throws -> T {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        if (response as? HTTPURLResponse)?.statusCode != 200 {
            throw NetworkError.BadRequest
        }
        
        guard let result = parse(data) else {
            throw NetworkError.decodingError
        }
        
        return result
    }
}
