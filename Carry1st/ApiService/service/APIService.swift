//
//  NetworkService.swift
//  Carry1st
//
//  Created by Michael Ossai on 26/11/2024.
//

import Foundation
import Combine
class APIService {
    func fetchProducts<T: Codable>(url: String) -> AnyPublisher<T, Error> {
        // Define the URL
        let url = URL(string: url)!
        
        // Create a publisher
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response in
                // Ensure the response is valid
                guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: T.self, decoder: JSONDecoder()) // Decode JSON to the specified type
            .receive(on: DispatchQueue.main) // Deliver updates on the main thread
            .eraseToAnyPublisher() // Erase type to AnyPublisher
    }
}
